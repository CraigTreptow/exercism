class Tournament
  def self.tally(input)
    # - MP: Matches Played
    # - W: Matches Won
    # - D: Matches Drawn (Tied)
    # - L: Matches Lost
    # - P: Points

    results = Hash.new { |hash, team| hash[team] = Hash.new(0) }

    input.split("\n").each do |line|
      next if line.strip.empty?

      team_a, team_b, result = line.split(";")

      results[team_a][:mp] += 1
      results[team_b][:mp] += 1

      if result == "win"
        results[team_a][:w] += 1
        results[team_b][:l] += 1
      end

      if result == "loss"
        results[team_a][:l] += 1
        results[team_b][:w] += 1
      end

      if result == "draw"
        results[team_a][:d] += 1
        results[team_b][:d] += 1
      end
    end

    results.each do |team_name, stats|
      wins   = stats[:w]       # how many wins this team has
      draws  = stats[:d]       # how many draws
      points = wins * 3 + draws

      stats[:p] = points       # store it in the team's hash, under the name :p
    end

    rows = results.sort_by { |team, stats| [-stats[:p], team] }.map do |team, stats|
      row(team, stats[:mp], stats[:w], stats[:d], stats[:l], stats[:p])
    end

    header + rows.join
  end

  def self.header
    "Team                           | MP |  W |  D |  L |  P\n"
  end

  def self.row(team, *counts)
    format("%-30s | %2d | %2d | %2d | %2d | %2d\n", team, *counts)
  end

  private_class_method :header, :row
end

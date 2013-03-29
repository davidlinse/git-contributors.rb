#!/usr/env ruby

# author:   david linse <davidlinse@gmail.com>
# uri:      https://github.com/davidlinse/git-contributors.rb.git
# version:  0.1.0
# date:     2013/04/30
# licence:  MIT
# ruby:     1.9.3


DEFAULT_TARGET = '.'

target = ARGV.first.nil? ? DEFAULT_TARGET : ARGV.first

abort("Could not find a .git repository at #{target}") unless Dir.exists?(File.join(target, '.git'))


def align value, decimals
  if value.is_a? Array
    value.size.to_s.rjust(decimals)
  else
    value.to_s.rjust(decimals)
  end
end


committers = []

shortlog = Dir.chdir(target) { shortlog = %x{git shortlog -ns} }

shortlog.each_line { |line|

    _match, commits, contributor = *line.match(/(\d{1,})\W([a-zA-Z\s]+)/)

    contributor.chop!

    committers << { name: contributor, commits: commits.to_i, percent: 0 }
}


total_commits = committers.inject(0) { |memo, contributor|
    memo += contributor[:commits]
}


committers.each { |contributor|

    name    = contributor[:name]
    commits = contributor[:commits]

    percent = (commits.to_f / total_commits.to_f * 100.00).round(1)

    tab1 = 5
    tab2 = 25 + (percent.to_s.length - name.to_s.length)
    tab2 = tab2 - 1 if percent.to_s.length > 3

    puts "#{align(commits,tab1)} #{name} #{align(percent,tab2)} %"
}

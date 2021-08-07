difficulty 2
description "You`ve stashed some changes using `stash` command made in README.md. Now you want to restore it."

setup do
  init_from_level
end

solution do
  return false if `git stash list` =~ /stash@\{0\}/
  return false unless repo.status.changed.to_a.flatten.include? "README.md"
  true 
end

hint do
  puts "Take a look at `stash` command and it`s subcommands."
end
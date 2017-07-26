require 'pry'

@people = ["Dallin", "Jared", "Dave", "Tyson", "Ian", "Dipesh", "Braden", "Ben", "Muhammad", "Gordon", "Brayden"]

def person_method
	person = @people.sample
	@people.delete(person)
	person2 = @people.sample
	@people.delete(person2)

	if @people.empty?
		people = ["Dallin", "Jared", "Dave", "Tyson", "Ian", "Dipesh", "Braden", "Ben", "Muhammad", "Gordon", "Brayden"]

		person3 = people.sample
		if person3 == person
			person3 = people.sample
		end
	end

	puts @people.empty? ? "#{person} will be in #{person3} group" : "#{person} and #{person2}"
end

def song_method
	song = Dir["Music/**/*.mp3"].sample

	@pid = fork{ exec 'afplay','-t','20', "#{song}" }
end

until @people.empty?
	person_method
	song_method
	gets
	Process.kill "TERM", @pid
end
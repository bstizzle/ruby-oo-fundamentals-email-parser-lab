# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    
    attr_accessor :emails

    def initialize(emails)
        @emails = emails 
    end 

    def parse
        raw_split = @emails.split(" ")
        fixed_split = raw_split.each do |mail|
            mail.delete! ','
        end 

        counter = 0
        while counter < fixed_split.length do 
            if fixed_split[counter] == fixed_split[counter+1]
                fixed_split.delete_at(counter+1)
            end 
            counter += 1 
        end 
        fixed_split 
    end 
end 
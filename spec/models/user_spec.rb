require 'rails_helper'

RSpec.describe User, type: :model do
    #tests go here
    subject { User.new(
        fname:'Francis',
        lname:'Clinton',
        email: 'hill@yahoo.com',
        tel:'256778765090',
        address:'Uganda, Pakwach',
        role: 'user',
        password: '12345678'
        )
    }

    before {subject.save}

    context "First Name" do
        it 'Should be present' do
            subject.fname = nil
            expect(subject).to_not be_valid
        end

        it 'Should not be longer than 30 characters' do
            subject.fname = "a"*32
            expect(subject).to_not be_valid
        end
    end

    context "Last Name" do
        it 'Should be present' do
            subject.lname = nil
            expect(subject).to_not be_valid
        end

        it 'Should not be longer than 30 characters' do
            subject.fname = "a"*32
            expect(subject).to_not be_valid
        end
    end

    context 'Telephone number' do
        it 'Should not be less than 10 characters' do
            subject.tel = '077985574'
            expect(subject).to_not be_valid
        end

        it 'Should not be more than 12 characters' do
            subject.tel = '2567798557440'
            expect(subject).to_not be_valid
        end
    end

    context 'Address' do
        it 'Should not be more than 50 characters' do
            subject.address = 'a'*51
            expect(subject).to_not be_valid
        end

        it 'Should be present' do
            subject.address = nil
            expect(subject).to_not be_valid
        end
    end

    context 'Email' do
        it 'Should be present' do
            subject.email = nil
            expect(subject).to_not be_valid
        end

        it 'Should not be more than 50 characters long' do
            subject.email = "e"*51
            expect(subject).to_not be_valid
        end
    end

    context 'Password' do
        it 'should not be less than 8 characters long' do
            subject.password = "&"*6
            expect(subject).to_not be_valid
        end

        it 'should not be more than 20 characters long' do
            subject.password = "&"*21
            expect(subject).to_not be_valid
        end

        it 'should be between 8 & 20 inclusive' do
            subject.password = "*"*9
            expect(subject).to be_valid
        end
    end
end
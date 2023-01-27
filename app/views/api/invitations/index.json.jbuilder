@invitations.each do |invitation|
    json.set! invitation.id do
        json.partial! 'invitation', invitation: invitation 
    end
end
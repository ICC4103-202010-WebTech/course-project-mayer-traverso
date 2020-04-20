namespace :db do
  task :model_queries => :environment do

    puts("Query 1: Get all events created by certain user. (default user id: 2)")
    result = Event.where(user_id: 2).distinct.map { |x| x.name }
    puts(result)
    puts("EOQ")

    puts("Query 2: Get all users belonging to an organization. (default organization id: 1)")
    result = Organization.find(1).users.distinct.map { |x| x.username }
    puts(result)
    puts("EOQ")

    puts("Query 3: Get all public events in an organization. (default organization id: 1)")
    result = Organization.find(1).events.where(public: true).distinct.map { |x| x.name }
    puts(result)
    puts("EOQ")

    puts("Query 4: Get all private events in an organization. (default organization id: 1)")
    result =  Organization.find(1).events.where(public: false).distinct.map { |x| x.name }
    puts(result)
    puts("EOQ")

    puts("Query 5: Get all guests that have been invited to a certain event. (default event id: 1)")
    result = Event.find(1).users.distinct.map { |x| x.username }
    puts(result)
    puts("EOQ")

    puts("Query 6: Get all guests that have voted for a date option in a certain event. (default event id: 1)" )
    result = DateEvent.joins(:votes).where(event_id: 1).pluck(:user_id)
    puts(result)
    puts("EOQ")

    puts("Query 7: Get all comments written by users on a specific event. (default event id: 1, default user id: 1)")
    result = Event.find(1).comments.where(user_id: 1).distinct.map { |x| x.text }
    puts(result)
    puts("EOQ")

    puts("Query 8: Get all comments written by a specific user on all events. (default user id: 2)")
    result = User.find(2).comments.distinct.map { |x| x.text}
    puts(result)
    puts("EOQ")

    puts("Query 9: Get all users with administrative privileges in an organization. (default organization id: 1)")
    result = Organization.find(1).organization_members.where(user_role: "administrator").distinct.map { |x| x.user.username }
    puts(result)
    puts("EOQ")

    puts("Query 10: Get all users with administrative privileges in the system.")
    result = User.where(primary_role: true).distinct.map { |x| x.username }
    puts(result)
    puts("EOQ")
  end
end
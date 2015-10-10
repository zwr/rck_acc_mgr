Mongo::Logger.logger.level = 1

User.delete_all

User.create! email: 'rocky@zwr.fi', password: 'balboa123', admin: true
User.create! email: 'oscar@zwr.fi', password: 'balboa123'
User.create! email: 'rck_prod_man@zwr.fi', password: '22#a0]uT)7#"1at', app: true

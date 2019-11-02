namespace :populate_with do
  desc 'populate with fake data'
  task fake_data: :environment do
    puts 'create users'
    user = User.create(email: 'user@email.com', password: '123456')

    puts 'create Subject'
    Subject.create(name: 'Redes de Computadores', time: '20:50', user: user)
    Subject.create(name: 'Sistemas de informação', time: '20:50', user: user)
    Subject.create(name: 'Estrutura de Dados', time: '19:00', user: user)
    Subject.create(name: 'Banco de Dados', time: '19:00', user: user)

    puts 'create events'
    Event.create(title: 'Evento 01', description: 'Descrição 01', local: 'UnB', date: '12/12/2012', subject_ids: 1, calendar: user.calendar)
    Event.create(title: 'Evento 02', description: 'Descrição 02', local: 'UnB', date: '12/12/2013', subject_ids: 2, calendar: user.calendar)
    Event.create(title: 'Evento 03', description: 'Descrição 03', local: 'UnB', date: '12/12/2014', subject_ids: 3, calendar: user.calendar)
    Event.create(title: 'Evento 04', description: 'Descrição 04', local: 'UnB', date: '12/12/2015', subject_ids: 1, calendar: user.calendar)
    Event.create(title: 'Evento 05', description: 'Descrição 05', local: 'UnB', date: '12/12/2016', subject_ids: 2, calendar: user.calendar)
    Event.create(title: 'Evento 06', description: 'Descrição 01', local: 'UnB', date: '12/12/2017', subject_ids: 3, calendar: user.calendar)

    puts 'create listing'
    Listing.create(title: 'Apostila de banco de dados', description: 'ótimo estado', kind: 'sell', price: '1590', user: user)
    Listing.create(title: 'Apostila de ED', description: 'ótimo estado', kind: 'lend', price: '1680', user: user)
    Listing.create(title: 'Livro de SI', description: 'ótimo estado', kind: 'exchange', price: '1450', user: user)
    Listing.create(title: 'Livro de Redes', description: 'ótimo estado', kind: 'sell', price: '1899', user: user)
  end
end

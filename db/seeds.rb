users = [
  { name: 'Han Solo', nip: '8144300453', pesel: '07321216682' },
  { name: 'Princess Leia', nip: '2841570955', pesel: '72080218079'  },
  { name: 'Luc Skywalker', nip: '2254429386', pesel: '85031019902'  },
  { name: 'Chewie', nip: '8374864797', pesel: '95090806083'  },
  { name: 'Lord Vader', nip: '2587180499', pesel: '56030511702'  },
  { name: 'Obi-Wan Kenobi', nip: '5426904574', pesel: '71122808687'  },
  { name: 'Jabba', nip: '4693911347', pesel: '98061713472'  }
]

users.each { |u| User.create(u) }

#For generating PESEL & nip, I used http://www.bogus.ovh.org/generatory/all.html

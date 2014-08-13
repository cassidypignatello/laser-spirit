# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
katie = User.create(:email => "katie@flatiron.com", :name => "Katie", :password=>"12345yyy", :password_confirmation=>"12345yyy")
avi = User.create(:email => "avi@flatiron.com", :name => "Avi", :password=>"123454yyy", :password_confirmation=>"123454yyy")
arel = User.create(:email => "arel@flatiron.com", :name => "Arel",  :password=>"12345yyx", :password_confirmation=>"12345yyx")
product = Product.create([{ 
    title: "Rails for Advanced beginners eBook", 
    description: "Whether you already have experience programming with other languages or you’re learning Ruby as your first programming language, Ruby is a relatively easy language to pick up. You will need a walk-through that helps you set up Ruby initially if you aren’t an experienced programmer, but you’ll be able to start building your first program immediately. Ruby uses a package manager to allow easy downloads of existing repositories and libraries, known as ‘gems’ — any good Ruby tutorial will walk you through the process of installing Ruby gems, as well as writing code in Ruby. ", 
    price: 2.99, 
    seller_id: avi.id
  }, 
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  }, 
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { 
    title: "Zen and the art of Javascript maintenence eBook", 
    description: "This book was written for anyone who wants to use JavaScript to make their websites a little more interesting, engaging, interactive, or usable. In particular, it is aimed at people who do not have a degree in computer science (well, not yet anyway). Programming books can be intimidating, so we wanted to create a book that taught readers how to use JavaScript in a gentler, more visual way. And importantly, we did not want to assume that the reader had any experience of programming beyond the ability to create a web page in HTML and CSS. (After all, many kinds of people are creating websites these days, and not all of us come from a programming background.)", 
    price: 4, 
    seller_id: katie.id
  }, 
  { 
    title: "Git master", 
    description: "TGit is the version control system developed by Linus Torvalds for Linux kernel development. It took the open source world by storm since its inception in 2005, and is used by small development shops and giants like Google, Red Hat, and IBM, and of course many open source projects.", 
    price: 19.99, 
    seller_id: katie.id
  },
  { title: "DBA SCRUM Master Audiobook", 
    description: "A book to help new database administrators understand more about the world of database administration. More and more people are moving into the DBA profession, and many are looking for a getting-started guide. Blogs are written about how to be an exceptional DBA and what to do in your first 100 days. This book takes a different approach, injecting some humor into helping you understand how to hit the ground running, and most importantly how to survive as a DBA.", 
    price: 5.58, 
    seller_id: arel.id
  }])

# rails: http://blog.ctf365.com/wp-content/uploads/2014/07/keep-calm-and-learn-ruby-on-rails-8.png
# Javascript http://jesuswasrasta.com/wp-content/uploads/2012/02/javascript.jpg
# Javascript http://seravo.fi/uploads/seravo/2013/06/JavaScript-logo.png
# DBA: http://www.blimptongroup.com/img/dba2.jpg
# DBA: http://www.blimptongroup.com/img/dba1.jpg 


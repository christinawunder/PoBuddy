# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Day.destroy_all
Day.create!(date: Date.today, bleeding: 1, bad_mood: 3, head_pain: 2, abdominal_pain: 2, breast_pain: 1, user_id: 1)
Day.create!(date: Date.today - 1, bleeding: 3, bad_mood: 3, head_pain: 4, abdominal_pain: 4, breast_pain: 2, user_id: 1)
Day.create!(date: Date.today - 2, bleeding: 4, bad_mood: 1, head_pain: 3, abdominal_pain: 1, breast_pain: 3, user_id: 1)


Link.destroy_all
Link.create!(media: 'Article', title:'What is normal menstrual cycle length and variation ?', url:"https://helloclue.com/articles/cycle-a-z/what's-normal-menstrual-cycle-length-and-variation", category: 'bleeding')
Link.create!(media: 'Article', title: 'What does the blood color mean ?', url:"https://www.medicalnewstoday.com/articles/324848.php", category: 'bleeding')
Link.create!(media: 'Article', title: 'Heavy menstrual bleeding', url:"https://www.cdc.gov/ncbddd/blooddisorders/women/menorrhagia.html", category: 'bleeding')
Link.create!(media: 'Article', title: 'Menstrual clots: Are they normal?', url:"https://www.medicalnewstoday.com/articles/322707.php", category: 'bleeding')
Link.create!(media: 'Article', title: 'All about menstrual blood', url:"https://www.plim.fr/en/content/19-about-menstrual-blood", category: 'bleeding')

Link.create!(media: 'Article', title:'Ovulation pain is real !', url: "https://helloclue.com/articles/cycle-a-z/ovulation-pain-101", category: 'abdominal_pain')
Link.create!(media: 'Article', title: "cramps after period: What's the cause ?", url:"https://www.healthline.com/health/cramps-after-period#causes", category: 'abdominal_pain')
Link.create!(media: 'Article', title: 'What are menstrual cramps?', url:"https://www.webmd.com/women/menstrual-cramps#1", category: 'abdominal_pain')
Link.create!(media: 'Article', title: 'Endometriosis: Are scientists making any headway?', url: "https://www.medicalnewstoday.com/articles/325249.php", category: 'abdominal_pain')

Link.create!(media: 'Article', title:'Sensitive breast: 10 causes, other symptoms, treatment and more', url: "https://www.healthline.com/health/sensitive-breast", category: "breast_pain")
Link.create!(media: 'Article', title:'7 Ways to Manage Painful Premenstrual Breasts ', url: "https://www.verywellhealth.com/cyclic-mastalgia-premenstrual-breast-pain-2721918", category: "breast_pain")
Link.create!(media: 'Article', title:'Breast pain and your period', url:"https://helloclue.com/articles/cycle-a-z/breast-pain-and-the-menstrual-cycle", category: "breast_pain")
Link.create!(media: 'Article', title: 'Why are my breasts sore before a period?', url: "https://www.medicalnewstoday.com/articles/323998.php", category: "breast_pain")


Link.create!(media: "Article", title:"Remedies to get rid of headaches naturally", url:"https://www.healthline.com/nutrition/headache-remedies#section6", category: "head_pain")
Link.create!(media: "Article", title:"Period headaches: How to make them go away", url:"https://lunapads.com/blogs/all/period-headaches-how-to-make-them-go-away", category: "head_pain")
Link.create!(media: "Article", title:"A Headache Before Period vs. a Headache During Period: Are They The Same Symptom?", url:"https://flo.health/menstrual-cycle/health/period/headache-before-during-period", category: "head_pain")
Link.create!(media: "Article", title: "Headaches and hormones: What's the connection?", url:"https://www.mayoclinic.org/diseases-conditions/chronic-daily-headaches/in-depth/headaches/art-20046729", category: "head_pain")
Link.create!(media: "Article", title: "Headaches, migraines, and the menstrual cycle", url:"https://helloclue.com/articles/cycle-a-z/headaches-migraines-and-the-menstrual-cycle", category: "head pain")

Link.create!(media:"Article", title: "How to Deal with Premenstrual Mood Swings", url:"https://www.healthline.com/health/pms-mood-swings", category: "bad mood")
Link.create!(media:"Article", title: "Premenstrual Syndrome Symptoms and How to Relieve Them", url:"https://flo.health/menstrual-cycle/health/pms-and-pmdd/premenstrual-syndrome-symptoms", category: "bad mood")
Link.create!(media:"Article", title: "Premenstrual syndrome (PMS) : questions and answers", url: "https://www.womenshealth.gov/menstrual-cycle/premenstrual-syndrome", category: "bad mood")
Link.create!(media:"Article", title:" Understand your premenstrual syndrome", url:"https://www.healthline.com/health/premenstrual-syndrome", category: "bad mood")
Link.create!(media:"Article", title: "Meditation, stress, and the menstrual cycle", url:"https://helloclue.com/articles/cycle-a-z/meditation-stress-your-cycle", category: "bad mood")

Link.create!(media:"Meme", title:"21 Things That Prove Periods Are Actually Pretty Funny", url: "https://www.buzzfeed.com/caseyrackham/periods-are-pretty-funny", category: "general")
Link.create!(media:"Meme", title: "50 Period Memes That Will Make You Laugh Through That Pain", url: "https://www.boredpanda.com/funny-period-memes/?utm_source=google&utm_medium=organic&utm_campaign=organic", category: "general")

Link.create!(media:"Video", title:"15 helpful period life hacks", url:"https://www.youtube.com/watch?v=xK4EgijWchU", category: "general")
Link.create!(media:"Video", title:"Doctors Answer Commonly Googled Period Questions", url:"https://www.youtube.com/watch?v=3M3UDd0JmPE", category: "general")
Link.create!(media:"Video", title:"Yoga For Menstrual Cramp Relief", url: "https://www.youtube.com/watch?v=8tJe6QhpZ3M", category: "general")
Link.create!(media:"Video", title:"7 Weird Things Your Period Does To Your Body", url:"https://www.youtube.com/watch?v=hOfkWV-6pN8", category: "general")
Link.create!(media:"Video", title:"This is Your Period in 2 Minutes ", url:"https://www.youtube.com/watch?v=WOi2Bwvp6hw", category: "general")


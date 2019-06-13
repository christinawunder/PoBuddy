# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
User.create!(email: "test@test.com", password: "123456789")

Day.destroy_all
Day.create!(date: Date.today - 26, bleeding: 3, bad_mood: 3, head_pain: 4, abdominal_pain: 4, breast_pain: 2, user_id: 1)
Day.create!(date: Date.today - 27, bleeding: 4, bad_mood: 1, head_pain: 3, abdominal_pain: 1, breast_pain: 3, user_id: 1)
Day.create!(date: Date.today - 28, bleeding: 5, bad_mood: 3, head_pain: 2, abdominal_pain: 2, breast_pain: 1, user_id: 1)

default_pic_bleeding_1 = 'https://images.unsplash.com/photo-1531354755998-195b9eca7061?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2000&q=80'
default_pic_bleeding_2 = 'https://images.unsplash.com/photo-1517355236730-cdedf90a2da3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=720&q=80'
default_pic_bleeding_3 = 'https://images.unsplash.com/photo-1461407253610-78178a3f453f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80'
default_pic_bleeding_4 = 'https://images.unsplash.com/photo-1482872376051-5ce74ebf0908?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1638&q=80'
default_pic_abdominal_pain_1 = 'https://images.unsplash.com/photo-1505334559002-c2103a3e106b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80'
default_pic_abdominal_pain_2 = 'https://images.unsplash.com/photo-1434973539530-5538b4681aac?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'
default_pic_abdominal_pain_3 = 'https://images.unsplash.com/photo-1529703713744-8121a2e8cd0d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
default_pic_breast_pain_1 = 'https://images.unsplash.com/photo-1518208734895-46d2ff97e480?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1293&q=80'
default_pic_breast_pain_2 = 'https://images.unsplash.com/photo-1468866576576-de8a9bf61f92?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1326&q=80'
default_pic_breast_pain_3 = 'https://images.unsplash.com/photo-1504701954957-2010ec3bcec1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
default_pic_head_pain_1 = 'https://images.unsplash.com/photo-1535083988052-565ca9546643?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80'
default_pic_head_pain_2 = 'https://images.unsplash.com/photo-1437182630182-32b2926da244?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
default_pic_bad_mood_1 = 'https://images.unsplash.com/photo-1537152443565-83a95138a61c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80'
default_pic_bad_mood_2 = 'https://images.unsplash.com/photo-1456534231849-7d5fcd82d77b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1788&q=80'
default_pic_bad_mood_3 = 'https://images.unsplash.com/photo-1433863448220-78aaa064ff47?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1789&q=80'
default_pic_bad_mood_4 = 'https://images.unsplash.com/photo-1530628442364-48f5567cce00?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80'
default_pic_general_1 = 'https://images.unsplash.com/photo-1458682625221-3a45f8a844c7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1334&q=80'
default_pic_general_2 = 'https://images.unsplash.com/photo-1540965659724-b3a37ae42847?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
default_pic_general_3 = 'https://images.unsplash.com/photo-1502716119720-b23a93e5fe1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
default_pic_general_4 = 'https://images.unsplash.com/photo-1453847668862-487637052f8a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
default_pic_general_5 = 'https://images.unsplash.com/photo-1527248170001-5182d21ff469?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80'
default_pic_general_6 = 'https://images.unsplash.com/photo-1502716119720-b23a93e5fe1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60'
default_pic_general_7 = 'https://images.unsplash.com/photo-1526758097130-bab247274f58?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80'


Link.destroy_all
Link.create!(media: 'Article', title:'What is normal menstrual cycle length and variation ?', url:"https://helloclue.com/articles/cycle-a-z/what's-normal-menstrual-cycle-length-and-variation", category: 'bleeding', photo_url: 'https://images.ctfassets.net/juauvlea4rbf/2PWqeM9XaEKUCmiQoGGkU4/c5e3b1e194bc11a6915d82baa0129a15/WN-series-02-contenful.gif')
Link.create!(media: 'Article', title: 'What does the blood color mean ?', url:"https://www.medicalnewstoday.com/articles/324848.php", category: 'bleeding', photo_url: default_pic_bleeding_1)
Link.create!(media: 'Article', title: 'Heavy menstrual bleeding', url:"https://www.cdc.gov/ncbddd/blooddisorders/women/menorrhagia.html", category: 'bleeding', photo_url: default_pic_bleeding_2)
Link.create!(media: 'Article', title: 'Menstrual clots: Are they normal?', url:"https://www.medicalnewstoday.com/articles/322707.php", category: 'bleeding', photo_url: default_pic_bleeding_3)
Link.create!(media: 'Article', title: 'All about menstrual blood', url:"https://www.plim.fr/en/content/19-about-menstrual-blood", category: 'bleeding', photo_url: default_pic_bleeding_4)

Link.create!(media: 'Article', title:'Ovulation pain is real !', url: "https://helloclue.com/articles/cycle-a-z/ovulation-pain-101", category: 'abdominal pain', photo_url: 'https://images.ctfassets.net/juauvlea4rbf/1LTaIBUteFuJTFAhl7vEBb/921b861282e7f12ffb88ca7485576a2f/ovulation_pain_contenful.svg?w=1920&h=960&fit=fill')
Link.create!(media: 'Article', title: "cramps after period: What's the cause ?", url:"https://www.healthline.com/health/cramps-after-period#causes", category: 'abdominal pain', photo_url: default_pic_abdominal_pain_1)
Link.create!(media: 'Article', title: 'What are menstrual cramps?', url:"https://www.webmd.com/women/menstrual-cramps#1", category: 'abdominal pain', photo_url: default_pic_abdominal_pain_2)
Link.create!(media: 'Article', title: 'Endometriosis: Are scientists making any headway?', url: "https://www.medicalnewstoday.com/articles/325249.php", category: 'abdominal pain', photo_url: default_pic_abdominal_pain_3)
Link.create!(media: 'Article', title: 'Endometriosis is so much worse than a bad period', url: "https://www.thelily.com/endometriosis-is-so-much-worse-than-a-bad-period/", category: 'abdominal pain', photo_url: 'https://www.washingtonpost.com/resizer/wjF3aitQs8pYMWtGbegglQ9MzvM=/1400x0/arc-anglerfish-washpost-prod-thelily-washpost.s3.amazonaws.com/public/A5HCNY7VNVFTZM64P2YXOBKN6M.jpg')


Link.create!(media: 'Article', title:'Sensitive breast: 10 causes, other symptoms, treatment and more', url: "https://www.healthline.com/health/sensitive-breast", category: "breast pain", photo_url: default_pic_breast_pain_1)
Link.create!(media: 'Article', title:'7 Ways to Manage Painful Premenstrual Breasts ', url: "https://www.verywellhealth.com/cyclic-mastalgia-premenstrual-breast-pain-2721918", category: "breast pain", photo_url: 'https://www.verywellhealth.com/thmb/sJ4zsfUrCUN48XvK9Z8_NiEH3dA=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/GettyImages-AB72518-56a73e543df78cf772939dbd.jpg')
Link.create!(media: 'Article', title:'Breast pain and your period', url:"https://helloclue.com/articles/cycle-a-z/breast-pain-and-the-menstrual-cycle", category: "breast pain", photo_url: 'https://images.ctfassets.net/juauvlea4rbf/64qF5YZHE2RYwdMAKPEKJq/d989cf4b3c4c4f835caac4e392360aec/Breast_pain_contenful.svg?w=1920&h=960&fit=fill')
Link.create!(media: 'Article', title: 'Why are my breasts sore before a period?', url: "https://www.medicalnewstoday.com/articles/323998.php", category: "breast pain", photo_url: default_pic_breast_pain_2)


Link.create!(media: "Article", title:"Remedies to get rid of headaches naturally", url:"https://www.healthline.com/nutrition/headache-remedies#section6", category: "head pain", photo_url: 'https://images.unsplash.com/photo-1535083988052-565ca9546643?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1000&q=80')
Link.create!(media: "Article", title:"Period headaches: How to make them go away", url:"https://lunapads.com/blogs/all/period-headaches-how-to-make-them-go-away", category: "head pain", photo_url: 'https://cdn.shopify.com/s/files/1/1904/9001/articles/lucaxx-freire-486466-unsplash_1000x.jpg?v=1538519266')
Link.create!(media: "Article", title:"A Headache Before Period vs. a Headache During Period: Are They The Same Symptom?", url:"https://flo.health/menstrual-cycle/health/period/headache-before-during-period", category: "head pain", photo_url: default_pic_head_pain_1)
Link.create!(media: "Article", title: "Headaches and hormones: What's the connection?", url:"https://www.mayoclinic.org/diseases-conditions/chronic-daily-headaches/in-depth/headaches/art-20046729", category: "head pain", photo_url: default_pic_head_pain_2)
Link.create!(media: "Article", title: "Headaches, migraines, and the menstrual cycle", url:"https://helloclue.com/articles/cycle-a-z/headaches-migraines-and-the-menstrual-cycle", category: "head pain", photo_url: 'https://images.ctfassets.net/juauvlea4rbf/760Tjc5szaLB4yiUVi6U8O/0756cd70210635c0c9fe88aac9461ae0/Cyclical_headaches_contenful.svg?w=1920&h=960&fit=fill')

Link.create!(media:"Article", title: "How to Deal with Premenstrual Mood Swings", url:"https://www.healthline.com/health/pms-mood-swings", category: "bad mood", photo_url: default_pic_bad_mood_1)
Link.create!(media:"Article", title: "Premenstrual Syndrome Symptoms and How to Relieve Them", url:"https://flo.health/menstrual-cycle/health/pms-and-pmdd/premenstrual-syndrome-symptoms", category: "bad mood", photo_url: default_pic_bad_mood_2)
Link.create!(media:"Article", title: "Premenstrual syndrome (PMS) : questions and answers", url: "https://www.womenshealth.gov/menstrual-cycle/premenstrual-syndrome", category: "bad mood", photo_url: default_pic_bad_mood_3)
Link.create!(media:"Article", title:" Understand your premenstrual syndrome", url:"https://www.healthline.com/health/premenstrual-syndrome", category: "bad mood", photo_url: default_pic_bad_mood_4)
Link.create!(media:"Article", title: "Meditation, stress, and the menstrual cycle", url:"https://helloclue.com/articles/cycle-a-z/meditation-stress-your-cycle", category: "bad mood", photo_url: 'https://images.ctfassets.net/juauvlea4rbf/6mQUnIIgGAgUCa2sQIu4io/8162fe7ddab10529253e59ad06375543/Meditation__stress_and_your_cycle_contenful_2x.png?w=1920&h=960&fit=fill')

Link.create!(media:"Meme", title:"21 Things That Prove Periods Are Actually Pretty Funny", url: "https://www.buzzfeed.com/caseyrackham/periods-are-pretty-funny", category: "general", photo_url: default_pic_general_1)
Link.create!(media:"Meme", title: "50 Period Memes That Will Make You Laugh Through That Pain", url: "https://www.boredpanda.com/funny-period-memes/?utm_source=google&utm_medium=organic&utm_campaign=organic", category: "general", photo_url: default_pic_general_2)

Link.create!(media:"Video", title:"15 helpful period life hacks", url:"https://www.youtube.com/watch?v=xK4EgijWchU", category: "general", photo_url: default_pic_general_3)
Link.create!(media:"Video", title:"Doctors Answer Commonly Googled Period Questions", url:"https://www.youtube.com/watch?v=3M3UDd0JmPE", category: "general", photo_url: default_pic_general_4)
Link.create!(media:"Video", title:"Yoga For Menstrual Cramp Relief", url: "https://www.youtube.com/watch?v=8tJe6QhpZ3M", category: "general", photo_url: default_pic_general_5)
Link.create!(media:"Video", title:"7 Weird Things Your Period Does To Your Body", url:"https://www.youtube.com/watch?v=hOfkWV-6pN8", category: "general", photo_url: default_pic_general_6)
Link.create!(media:"Video", title:"This is Your Period in 2 Minutes ", url:"https://www.youtube.com/watch?v=WOi2Bwvp6hw", category: "general", photo_url: default_pic_general_7)


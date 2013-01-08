Factory.define :user do |user|
  user.email                 "immortal.-@mail.ru"
  user.password              "9379992"
  user.password_confirmation "9379992"
 end
 Factory.define :advert do |adv|
  adv.title			"Sample_title"
  adv.description	"Sample_description"
  adv.email			"sample@mail.ru"
  adv.city			"Sample_city"
  adv.address		"Sample_address"
  adv.category_id	1
 end
 Factory.define :category do |cat|
  cat.title          "Sample_category"
 end
 Factory.define :admin do |admin|
  admin.email                 "immortal.-@mail.ru"
  admin.password              "9379992"
  admin.password_confirmation "9379992"
end
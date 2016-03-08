User.seed do |u|
  u.id = 3
  u.email = "aatest@lendy.com"
  u.password = "aabbccddee"
  u.confirmed_at = Time.now
end
UserProfile.seed do |u|
  u.id = 6
  u.user_id = 3
  u.name = "山田"
  u.name2 = "太郎"
  u.yomi = "ヤマダ"
  u.yomi2 = "タロウ"
  u.tel = "09012345678"
  u.zipcode = "150-0031"
  u.prefecture = "東京都"
  u.city = "渋谷区桜ヶ丘8-17"
  u.apartment = "シャレー渋谷B棟"
  u.birthday = "1985-02-28".to_date
end
SchoolProfile.seed do |u|
  u.id = 4
  u.name = "東京大学"
  u.department = "法学部"
  u.graduation = "2006-03-31".to_date
  u.user_id = 3
end
BusinessProfile.seed do |u|
  u.id = 5
  u.job_status = 3
  u.company = "三菱商事"
  u.job_type = 1
  u.job_title = "なし"
  u.income = 1200
  u.user_id = 3
end
BorrowCondition.seed do |u|
  u.id = 4
  u.bank = "三井住友銀行"
  u.amount = 350
  u.rate_type = 1
  u.rate = 2
  u.user_id = 3
end

User.seed do |u|
  u.id = 4
  u.email = "bbtest@lendy.com"
  u.password = "aabbccddee"
  u.confirmed_at = Time.now
end
UserProfile.seed do |u|
  u.id = 7
  u.user_id = 4
  u.name = "山田"
  u.name2 = "太郎"
  u.yomi = "ヤマダ"
  u.yomi2 = "タロウ"
  u.tel = "09012345678"
  u.zipcode = "150-0031"
  u.prefecture = "東京都"
  u.city = "渋谷区桜ヶ丘8-17"
  u.apartment = "シャレー渋谷B棟"
  u.birthday = "1985-02-28".to_date
end
SchoolProfile.seed do |u|
  u.id = 5
  u.name = "北海道大学"
  u.department = "経済学部"
  u.graduation = "2006-03-31".to_date
  u.user_id = 4
end
BusinessProfile.seed do |u|
  u.id = 6
  u.job_status = 3
  u.company = "東京海上日動火災"
  u.job_type = 1
  u.job_title = "なし"
  u.income = 1200
  u.user_id = 4
end
BorrowCondition.seed do |u|
  u.id = 5
  u.bank = "群馬銀行"
  u.amount = 250
  u.rate_type = 1
  u.rate = 3.0
  u.user_id = 4
end

User.seed do |u|
  u.id = 5
  u.email = "ddtest@lendy.com"
  u.password = "aabbccddee"
  u.confirmed_at = Time.now
end
UserProfile.seed do |u|
  u.id = 4
  u.user_id = 5
  u.name = "山田"
  u.name2 = "太郎"
  u.yomi = "ヤマダ"
  u.yomi2 = "タロウ"
  u.tel = "09012345678"
  u.zipcode = "150-0031"
  u.prefecture = "東京都"
  u.city = "渋谷区桜ヶ丘8-17"
  u.apartment = "シャレー渋谷B棟"
  u.birthday = "1985-02-28".to_date
end
SchoolProfile.seed do |u|
  u.id = 6
  u.name = "京都大学"
  u.department = "経済学部"
  u.graduation = "2006-03-31".to_date
  u.user_id = 5
end
BusinessProfile.seed do |u|
  u.id = 7
  u.job_status = 3
  u.company = "旭化成"
  u.job_type = 1
  u.job_title = "なし"
  u.income = 700
  u.user_id = 5
end
BorrowCondition.seed do |u|
  u.id = 6
  u.bank = "群馬銀行"
  u.amount = 250
  u.rate_type = 1
  u.rate = 3.4
  u.user_id = 5
end

User.seed do |u|
  u.id = 6
  u.email = "eetest@lendy.com"
  u.password = "aabbccddee"
  u.confirmed_at = Time.now
end
UserProfile.seed do |u|
  u.id = 5
  u.user_id = 6
  u.name = "山田"
  u.name2 = "太郎"
  u.yomi = "ヤマダ"
  u.yomi2 = "タロウ"
  u.tel = "09012345678"
  u.zipcode = "150-0031"
  u.prefecture = "東京都"
  u.city = "渋谷区桜ヶ丘8-17"
  u.apartment = "シャレー渋谷B棟"
  u.birthday = "1985-02-28".to_date
end
SchoolProfile.seed do |u|
  u.id = 7
  u.name = "九州大学"
  u.department = "工学部"
  u.graduation = "2006-03-31".to_date
  u.user_id = 6
end
BusinessProfile.seed do |u|
  u.id = 8
  u.job_status = 3
  u.company = "清水建設"
  u.job_type = 1
  u.job_title = "なし"
  u.income = 900
  u.user_id = 6
end
BorrowCondition.seed do |u|
  u.id = 7
  u.bank = "福岡銀行"
  u.amount = 340
  u.rate_type = 1
  u.rate = 3
  u.user_id = 6
end

User.seed do |u|
  u.id = 7
  u.email = "fftest@lendy.com"
  u.password = "aabbccddee"
  u.confirmed_at = Time.now
end
UserProfile.seed do |u|
  u.id = 6
  u.user_id = 7
  u.name = "山田"
  u.name2 = "太郎"
  u.yomi = "ヤマダ"
  u.yomi2 = "タロウ"
  u.tel = "09012345678"
  u.zipcode = "150-0031"
  u.prefecture = "東京都"
  u.city = "渋谷区桜ヶ丘8-17"
  u.apartment = "シャレー渋谷B棟"
  u.birthday = "1985-02-28".to_date
end
SchoolProfile.seed do |u|
  u.id = 8
  u.name = "名古屋大学"
  u.department = "工学部"
  u.graduation = "2006-03-31".to_date
  u.user_id = 7
end
BusinessProfile.seed do |u|
  u.id = 9
  u.job_status = 3
  u.company = "メタルワン"
  u.job_type = 1
  u.job_title = "なし"
  u.income = 650
  u.user_id = 7
end
BorrowCondition.seed do |u|
  u.id = 8
  u.bank = "名古屋銀行"
  u.amount = 140
  u.rate_type = 1
  u.rate = 4.0
  u.user_id = 7
end

User.seed do |u|
  u.id = 8
  u.email = "ggtest@lendy.com"
  u.password = "aabbccddee"
  u.confirmed_at = Time.now
end
UserProfile.seed do |u|
  u.id = 7
  u.user_id = 8
  u.name = "山田"
  u.name2 = "太郎"
  u.yomi = "ヤマダ"
  u.yomi2 = "タロウ"
  u.tel = "09012345678"
  u.zipcode = "150-0031"
  u.prefecture = "東京都"
  u.city = "渋谷区桜ヶ丘8-17"
  u.apartment = "シャレー渋谷B棟"
  u.birthday = "1985-02-28".to_date
end
SchoolProfile.seed do |u|
  u.id = 9
  u.name = "大阪大学"
  u.department = "工学部"
  u.graduation = "2006-03-31".to_date
  u.user_id = 8
end
BusinessProfile.seed do |u|
  u.id = 10
  u.job_status = 3
  u.company = "ゴールドマン・サックス"
  u.job_type = 1
  u.job_title = "なし"
  u.income = 800
  u.user_id = 8
end
BorrowCondition.seed do |u|
  u.id = 9
  u.bank = "近畿大阪銀行"
  u.amount = 200
  u.rate_type = 1
  u.rate = 3.1
  u.user_id = 8
end
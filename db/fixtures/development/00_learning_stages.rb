["基礎学習期", "応用学習期", "ポートフォリオ作成期", "転職活動期"].each do |stage|
  LearningStage.find_or_create_by(name: stage)
end

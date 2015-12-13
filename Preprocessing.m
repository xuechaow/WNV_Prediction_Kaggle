

for i = 1:size(MosType)
  find = strcmp(MosType{i}, 'CULEX PIPIENS/RESTUANS');
  if find
      Species_TF(:,i) = 1;
      continue;
  end
  find = strcmp(MosType{i},'CULEX RESTUANS');
  if find
      Species_TF(:,i) = 2;
      continue;
  end
  find = strcmp(MosType{i},'CULEX PIPIENS');
  if find
      Species_TF(:,i) = 3;
      continue;
  end
  find = strcmp(MosType{i},'CULEX TERRITANS');
  if find
      Species_TF(:,i) = 4;
      continue;
  end
  find = strcmp(MosType{i},'CULEX TARSALIS');
  if find
      Species_TF(:,i) = 5;
      continue;
  end
  find = strcmp(MosType{i},'CULEX ERRATICUS');
  if find
      Species_TF(:,i) = 6;
      continue;
  end
  find = strcmp(MosType{i},'CULEX SALINARIUS');
  if find
      Species_TF(:,i) = 7;
      continue;
  end
  find = strcmp(MosType{i},'UNSPECIFIED CULEX');
  if find
      Species_TF(:,i) = 8;
      continue;
  end
  Species_TF(:,i) = -1;

end

for i = 1:size(Species)
  find = strcmp(Species{i}, 'CULEX PIPIENS/RESTUANS');
  if find
      Species_TF(:,i) = 1;
      continue;
  end
  find = strcmp(Species{i},'CULEX RESTUANS');
  if find
      Species_TF(:,i) = 2;
      continue;
  end
  find = strcmp(Species{i},'CULEX PIPIENS');
  if find
      Species_TF(:,i) = 3;
      continue;
  end
  find = strcmp(Species{i},'CULEX TERRITANS');
  if find
      Species_TF(:,i) = 4;
      continue;
  end
  find = strcmp(Species{i},'CULEX TARSALIS');
  if find
      Species_TF(:,i) = 5;
      continue;
  end
  find = strcmp(Species{i},'CULEX ERRATICUS');
  if find
      Species_TF(:,i) = 6;
      continue;
  end
  find = strcmp(Species{i},'CULEX SALINARIUS');
  if find
      Species_TF(:,i) = 7;
      continue;
  end
  find = strcmp(Species{i},'UNSPECIFIED CULEX');
  if find
      Species_TF(:,i) = 8;
      continue;
  end
  Species_TF(:,i) = -1;

end

hist(MosType_TF,8);
title('Distribution of Species in Training Data');
xlabel('Specy');
ylabel('Numbers');

hist(Species_TF,8);
title('Distribution of Species in Testing Data');
xlabel('Specy');
ylabel('Numbers');

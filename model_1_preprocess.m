[row col] = size(Train_DataCopy);
val1 = 0;
black_cell = {};
block_cell_count = 1;
block_cell_vec_count = 1;
block_cell_vec = [];

datastring = '2013-Dec-31';
datastring_min = '2013-Jan-01';
formatin = 'yyyy-mmm-dd';
year_limit = datenum(datastring,formatin);
year_limit_min = datenum(datastring_min,formatin);

for i = 1:row
    if val1 ~= Train_DataCopy(i,3)
    black_cell{block_cell_count}= block_cell_vec;
    val1 = Train_DataCopy(i,3);
    block_cell_count = block_cell_count+1;
    block_cell_vec_count = 1;
    block_cell_vec = [];
    end
    if Train_DataCopy(i,1) < year_limit
        if Train_DataCopy(i,1) > year_limit_min
    block_cell_vec(block_cell_vec_count) = i;
    block_cell_vec_count = block_cell_vec_count+1;
        end
    end
end
    
cell_amount = size(black_cell);
data_cell = {};
for i = 1 : cell_amount(2)

    data_cell{i} = Train_DataCopy(black_cell{i},[1 9]);
    stem(data_cell{i}(:,1),data_cell{i}(:,2));
    hold on;
end

datetick('x',0);
    
%  [row col] = size(Train_DataCopy);   
%  
%  val1 = Train_DataCopy(1,3);
%  vec_mat = 1;
%  j = 1;
%  for i = 1 : col
%     if val1 == Train_DataCopy(i,3)
%         vec_mat(:,j) = [vec_mat(:,j) ; i];
%     else val1 = Train_DataCopy(i,3)
%         j = j+1;
%         vec_mat(:,j) = [vec_mat(:,j) ; i];
%     end
%  end
        
     
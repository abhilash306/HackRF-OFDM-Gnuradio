
tx1 = fopen("test1.txt",'rb');
rx1 = fopen("test2.txt",'rb');
tx = fread(tx1,Inf,"char");
rx = fread(rx1,Inf,"char"); 
tx2=tx(1:size(rx));
ber = sum(tx2(:)~= rx(:))/numel(tx2(:)); 

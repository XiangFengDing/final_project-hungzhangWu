function FindTheAnswer(X)             %主程式碼
sum=0;                                
for ii=1:X                            
    temp=JudgeTheNumber(ii);          
    sum=sum+temp;                     
    JudgeTheSum(sum);                 %擷取小數點前10位數字的總和
end
fprintf('%010d\n',JudgeTheSum(sum))   %保留前十位數字，若最前面那位數的數字為0，則會以0來填補
end

function number=JudgeTheNumber(A)     %(函數1)判定每個的指數次方是否超過10的10次方
number=1;                             %從1開始
    for jj=1:A                        %將次方拆開變成 A乘以自己A次
        number=number*A;
        if number>=10^10              %每次乘完自己一輪之後都要檢查是否超過
           number=rem(number,10^10);  %如果有超過的話，就只留下小數點前十位
        end
end
end

function B=JudgeTheSum(B)             %(函數2)判斷總和是否超過(基本上和函數1差不多)
if B>=10^10
    B=rem(B,10^10);
end
end
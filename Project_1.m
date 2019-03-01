%INSTRUCTIONS
% 1) RUN CODE
% 2) (Optional) To check for unsolvable -
% uncomment all from "START" to "STOP" (excluding the two)

clc
clear all
inp=input('enter a 9x1 matrix:');
%Test Matrices [1 8 2 0 4 3 7 6 5] [ 4 2 8 1 0 7 6 3 5]
GoalState=[1 2 3 4 5 6 7 8 0];
size_check=size(inp);
ReqdGoal=[];
%START
% if not(all(size_check==[1 9]))
%     disp('Input not a 9x1 Matrix')  
% else
%     count=0;
%     vec(1)=inp(1,1);
%     vec(2)=inp(1,2);
%     vec(3)=inp(1,3);
%     vec(4)=inp(1,4);
%     vec(5)=inp(1,5);
%     vec(6)=inp(1,6);
%     vec(7)=inp(1,7);
%     vec(8)=inp(1,8);
%     vec(9)=inp(1,9);
%     for i=1:9
%         for j=i+1:9
%             if ((vec(j)<vec(i)) && vec(j)~=0)
%                 count=count+1;
%             end
%         end
%     end
%     if(mod(count,2)==0)
        ReqdGoal=GoalState;
%     else
%         fprintf("This Combination is UNSOLVABLE\n");
%     end
%     ReqdGoal;
temp=inp;
node=zeros(5,9);
node(1,:)=temp;
parentnode=zeros(90720,3);
position=1;
for y=1:362880
    fprintf('%s%d\n','number of iterations: ', y);
    a=find(temp==0);
    p1=temp;
    p2=temp;
    p3=temp;
    p4=temp;
    k=1;
    if a==1
        p1(1)=temp(2);
        p1(2)=temp(1);
        position=length(find(any(node,2)))+1;
        if ismember(p1,node,'rows')==0
            node(position,:)=p1;
            parentnode(y,k)=position;
            k=k+1;
        end
        
        p2(1)=temp(4);
        p2(4)=temp(1);
        position=length(find(any(node,2)))+1;
        if ismember(p2,node,'rows')==0
            node(position,:)=p2;
            parentnode(y,k)=position;
            k=k+1;
        end
    end
    
    if a==2
        p1(2)=temp(1);
        p1(1)=temp(2);
        position=length(find(any(node,2)))+1;
        if ismember(p1,node,'rows')==0
            node(position,:)=p1;
            parentnode(y,k)=position;
            k=k+1;
        end
        p2(2)=temp(3);
        p2(3)=temp(2);
        position=length(find(any(node,2)))+1;
        if ismember(p2,node,'rows')==0
            node(position,:)=p2;
            parentnode(y,k)=position;
            k=k+1;
        end
        p3(2)=temp(5);
        p3(5)=temp(2);
        position=length(find(any(node,2)))+1;
        if ismember(p3,node,'rows')==0
            node(position,:)=p3;
            parentnode(y,k)=position;
            k=k+1;
        end
    end
    
    if a==3
        p1(3)=temp(2);
        p1(2)=temp(3);
        position=length(find(any(node,2)))+1;
        if ismember(p1,node,'rows')==0
            node(position,:)=p1;
            parentnode(y,k)=position;
            k=k+1;
        end
        p2(3)=temp(6);
        p2(6)=temp(3);
        position=length(find(any(node,2)))+1;
        if ismember(p2,node,'rows')==0
            node(position,:)=p2;
            parentnode(y,k)=position;
            k=k+1;
        end
    end
    
    if a==4
        p1(4)=temp(1);
        p1(1)=temp(4);
        position=length(find(any(node,2)))+1;
        if ismember(p1,node,'rows')==0
            node(position,:)=p1;
            parentnode(y,k)=position;
            k=k+1;
        end
        p2(4)=temp(5);
        p2(5)=temp(4);
        position=length(find(any(node,2)))+1;
        if ismember(p2,node,'rows')==0
            node(position,:)=p2;
            parentnode(y,k)=position;
            k=k+1;
        end
        p3(4)=temp(7);
        p3(7)=temp(4);
        position=length(find(any(node,2)))+1;
        if ismember(p3,node,'rows')==0
            node(position,:)=p3;
            parentnode(y,k)=position;
            k=k+1;
        end
    end
    
    if a==5
        p1(5)=temp(2);
        p1(2)=temp(5);
        position=length(find(any(node,2)))+1;
        if ismember(p1,node,'rows')==0
            node(position,:)=p1;
            parentnode(y,k)=position;
            k=k+1;
        end
        p2(5)=temp(4);
        p2(4)=temp(5);
        position=length(find(any(node,2)))+1;
        if ismember(p2,node,'rows')==0
            node(position,:)=p2;
            parentnode(y,k)=position;
            k=k+1;
        end
        p3(5)=temp(6);
        p3(6)=temp(5);
        position=length(find(any(node,2)))+1;
        if ismember(p3,node,'rows')==0
            node(position,:)=p3;
            parentnode(y,k)=position;
            k=k+1;
        end
        p4(8)=temp(5);
        p4(5)=temp(8);
        position=length(find(any(node,2)))+1;
        if ismember(p4,node,'rows')==0
            node(position,:)=p4;
            parentnode(y,k)=position;
            k=k+1;
        end
    end
    
    if a==6
        p1(6)=temp(3);
        p1(3)=temp(6);
        position=length(find(any(node,2)))+1;
        if ismember(p1,node,'rows')==0
            node(position,:)=p1;
            parentnode(y,k)=position;
            k=k+1;
        end
        p2(6)=temp(5);
        p2(5)=temp(6);
        position=length(find(any(node,2)))+1;
        if ismember(p2,node,'rows')==0
            node(position,:)=p2;
            parentnode(y,k)=position;
            k=k+1;
        end
        p3(6)=temp(9);
        p3(9)=temp(6);
        position=length(find(any(node,2)))+1;
        if ismember(p3,node,'rows')==0
            node(position,:)=p3;
            parentnode(y,k)=position;
            k=k+1;
        end
    end
    
    if a==7
        p1(7)=temp(4);
        p1(4)=temp(7);
        position=length(find(any(node,2)))+1;
        if ismember(p1,node,'rows')==0
            node(position,:)=p1;
            parentnode(y,k)=position;
            k=k+1;
        end
        
        p2(7)=temp(8);
        p2(8)=temp(7);
        position=length(find(any(node,2)))+1;
        if ismember(p2,node,'rows')==0
            node(position,:)=p2;
            parentnode(y,k)=position;
            k=k+1;
        end
    end
    
    if a==8
        p1(8)=temp(5);
        p1(5)=temp(8);
        position=length(find(any(node,2)))+1;
        if ismember(p1,node,'rows')==0
            node(position,:)=p1;
            parentnode(y,k)=position;
            k=k+1;
        end
        p2(8)=temp(7);
        p2(7)=temp(8);
        position=length(find(any(node,2)))+1;
        if ismember(p2,node,'rows')==0
            node(position,:)=p2;
            parentnode(y,k)=position;
            k=k+1;
        end
        p3(8)=temp(9);
        p3(9)=temp(8);
        position=length(find(any(node,2)))+1;
        if ismember(p3,node,'rows')==0
            node(position,:)=p3;
            parentnode(y,k)=position;
            k=k+1;
        end
    end
    
    if a==9
        p1(9)=temp(6);
        p1(6)=temp(9);
        position=length(find(any(node,2)))+1;
        if ismember(p1,node,'rows')==0
            node(position,:)=p1;
            parentnode(y,k)=position;
            k=k+1;
        end
        p2(9)=temp(8);
        p2(8)=temp(9);
        position=length(find(any(node,2)))+1;
        if ismember(p2,node,'rows')==0
            node(position,:)=p2;
            parentnode(y,k)=position;
            k=k+1;
        end
    end
    temp=node(y+1,:);
    if ismember(ReqdGoal,node(end-4:end,:),'rows')==1
        disp('puzzle solved')
        break
    end
end
%end
%STOP
%for infinite check(without initial check algo)
if ismember(ReqdGoal,node(end-4:end,:),'rows')==0
        disp('puzzle Unsolvable')
end

 path=[length(node)];
 for z=1:31 %(Hardest puzzle can have max 31 moves)
     [j,~]=find(path(1)==parentnode);
     path=[j path];
 end
%  %saving variables
 f1 = fopen('path.txt','wt');
 f2 = fopen('node_info.txt','wt');
 f3 = fopen('nodes.txt','wt');
 for ii = 1:size(path,1)
    fprintf(f1,'%g\t',path(ii,:));
    fprintf(f1,'\n');
 end
 for ii = 1:size(parentnode,1)
    fprintf(f2,'%g\t',parentnode(ii,:));
    fprintf(f2,'\n');
 end
 for ii = 1:size(node,1)
    fprintf(f3,'%g\t',node(ii,:));
    fprintf(f3,'\n');
 end
fclose(f1);
fclose(f2);
fclose(f3);
          
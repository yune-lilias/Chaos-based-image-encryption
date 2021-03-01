function idx = init_chaos(sized,H)

 
%map result H into 8 decimal number between 0 and 1
dech = hex2dec(H)/5000000000;




log_u =vpa( 3.6+ 0.4*dech(1),3);
log_x0 = vpa(dech(2),3);
if(log_x0 == 0)
    log_x0 = 0.1;
end

log_x0 = double(log_x0);
log_u = double(log_u);

x = log_x0;


%preprocessing

tots = prod(sized);

for i=1:200
    x = log_u*x*(1-x);
end

ind = zeros(sized);
ind = reshape(ind,[],1);
ind(1) = log_u*x*(1-x);

for i=2:prod(sized)
    x = log_u*x*(1-x);
    ind(i) = x;
end

 [out,idx] = sort(ind);
 
end
 


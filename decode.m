function recover = decode(imagenew,idx)
sized = size(imagenew);
recover = zeros(sized);
recover = reshape(recover,[],1);
for i=1:prod(sized)
    recover(idx(i)) = imagenew(i);
end

recover = reshape(recover,sized);
end
function [dx, dy]=im2vdiff(m,n)

k=m*n;
D=ones(m,n);
Dy=D; Dy(m,:)=zeros(1,n); Dy=Dy(:);
Dx=D'; Dx=Dx(:); Dx(end-m+1:end)=0;
dx=spdiags([-Dx Dx],[-m 0],k,k)';
dy=spdiags([-Dy Dy],[-1 0],k,k)';

end

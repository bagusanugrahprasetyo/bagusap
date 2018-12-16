
#No.1
#17523224

A = matrix(c(4, -5,
             2, -3), 2, 2, byrow=TRUE)
x0 = c(1, 0)

powerm = function(A, x0, thresh)
{
    m0 = max(x0)
    x1 = A %*% (x0 / m0)
    m1 = max(x1)
    if(abs(m1 - m0) < thresh)
    {
        return(m1)
    }
    else
    {
        powerm(A, x1, thresh)
    }
}

ev1 = powerm(A, x0, 1e-4)
ev2 = powerm(A - diag(2)*ev1, x0, 1e-4)

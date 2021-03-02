import numpy as np



def im2col_sliding_strided(A, BSZ, stepsize=1):
    # Parameters
    m, n = A.shape
    s0, s1 = A.strides
    nrows = m - BSZ[0] + 1
    ncols = n - BSZ[1] + 1
    shp = BSZ[0], BSZ[1], nrows, ncols
    strd = s0, s1, s0, s1

    out_view = np.lib.stride_tricks.as_strided(A, shape=shp, strides=strd)
    return out_view.reshape(BSZ[0] * BSZ[1], -1)[:, ::stepsize]



def scol2im(x, patch_size, mm, nn, method, weights):
    t = np.arange(1, mm*nn).reshape((mm, nn))
    temp = im2col_sliding_strided(t,(patch_size, patch_size))
    weights = np.ones(x.size);

    counts = reshape(accumarray(temp(:), weights(:), [mm*nn 1], @sum)',[mm nn]);

    I = reshape(accumarray(temp(:), Z(:), [mm*nn 1], @(x) sum(x)),[mm nn]);






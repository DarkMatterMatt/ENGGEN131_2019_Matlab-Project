% Author: Matt Moran
testFunctionName = 'MedianPixel';
clear p r g b;

% run test cases using 3D arrays
p(:,:,1) = [54 50 48 43];
p(:,:,2) = [48 52 48 44];
p(:,:,3) = [50 41 47 52];
[r, g, b] = MedianPixel(p);
assert(isequal([r g b], [49 48 49]));
clear p r g b;

p(:,:,1) = [54 50 45];
p(:,:,2) = [48 52 43];
p(:,:,3) = [50 41 47];
[r, g, b] = MedianPixel(p);
assert(isequal([r g b], [50 48 47]));
clear p r g b;

disp([testFunctionName ' passed all tests']);
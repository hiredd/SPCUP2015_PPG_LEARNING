load('ground_truth.mat');
load('fft_features.mat');

use_feature = 2;
f = fopen('training_data_54','w+');

count = size(ground_truth,1);
dim = size(features,3);
for c = 1 : count
    fprintf(f,'%f',ground_truth(c,1));
    dim_count = 0;
    for u = 1 : use_feature
        for d = 1 : dim
            dim_count = dim_count+1;
            fprintf(f,' %d:%f',dim_count,features(c,u,d));
        end
    end
    fprintf(f,'\n');
end
fclose(f);
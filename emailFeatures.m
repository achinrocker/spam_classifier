function x = emailFeatures(word_indices)
%EMAILFEATURES takes in a word_indices vector and produces a feature vector
%from the word indices
%   x = EMAILFEATURES(word_indices) takes in a word_indices vector and 
%   produces a feature vector from the word indices. 

% Total number of words in the dictionary

n = 1976;

x = zeros(n, 1);


for i=1:length(word_indices),
	x(word_indices(i))=1;
end	

fp=fopen("/home/achin1/OctaveProjects/libsvm-3.20/matlab/input.m","w");

for i=1:length(x),
	fprintf(fp,"%.2f ",x(i));
end;
fprintf(fp,"\n");
fclose(fp);

end

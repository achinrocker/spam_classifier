function createF(filename)

x=readFile(filename);
word_indices=processEmail(x);
emailFeatures(word_indices);

end;

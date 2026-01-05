function seg_output_dir = mrGrad_extend_output(RG_path, Parallel)
% extend existing mrGrad output

% Parallel pool flag
Parallel = exist('Parallel', 'var') && ~isempty(Parallel) && Parallel;

output_dir = fileparts(RG_path);
RG = load(RG_path).RG;
rg_names = fieldnames(RG);

for jj = 1:length(rg_names)
    seg_output_dir = mrGrad_seg(RG.(rg_names{jj}),output_dir,true,Parallel);
end
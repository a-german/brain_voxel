function big_img = revert_reshape(array,region)
%REVERT_RESHAPE reshape 1D array with voxel data to 4D or 3D big_img
    big_img = single(zeros([size(region) size(array,2)]));
    for ii = 1:1:size(array,2)
    img = big_img(:,:,:,ii);
    img_index = img(:);
    template_index = region(:);
    img_index(template_index) = array(:,ii);
    img = reshape(img_index, size(region));
    big_img(:,:,:,ii) = img;
    end
end


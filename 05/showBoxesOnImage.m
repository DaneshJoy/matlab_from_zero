function showBoxesOnImage(I, boxes, method)
% ---------- Method 1
    if method == "rect"
        imshow(I)
        hold on
        for i = 1:size(boxes,1)
            %Draw boxes
%             rectangle('Position',boxes(i,:))
            rectangle('Position',boxes(i,:),...
                'LineWidth',2,...
                'LineStyle','-',...
                'EdgeColor','c',...
                'Curvature',[.5,1]);
            %Show numbers
            text(boxes(i,1),boxes(i,2),num2str(i),'Color','b','FontSize',14)
        end

% ---------- Method 2
    elseif method == "annot"
        label_str = cell(size(boxes,1),1); % Pre-allocation
        for i = 1:size(boxes,1)
            label_str{i} = num2str(i);
        end
        annots = insertObjectAnnotation(I, 'rectangle', boxes, label_str,...
            'LineWidth',3,'Color','m','TextColor','blue','FontSize',14);
        imshow(annots)

    end
    s = sprintf('%d persons detected', size(boxes,1));
    title(s);
end
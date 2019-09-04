function showBoxesOnImage(img, boxes, method)
    
    numberOfObjects = size(boxes, 1);
    if method == "rect"
        imshow(img)
        for i=1:numberOfObjects
            rectangle('Position', boxes(i,:), ...
            'EdgeColor', 'c', ...
            'LineWidth', 2, ...
            'Curvature', [0.5, 0.5],...
            'LineStyle', '-')

            text(boxes(i,1), boxes(i,2), num2str(i),...
                'Color', 'm',...
                'FontSize', 18);
        end
        
    elseif method == "annot"
        label = cell(numberOfObjects, 1); % Pre-allocation
        for i = 1:numberOfObjects
            label{i} = num2str(i);
        end
        annot = insertObjectAnnotation(img, 'rectangle',...
            boxes, label, 'FontSize', 18,...
            'Color', 'c', 'TextColor', 'blue',...
            'LineWidth', 2);
        imshow(annot)
    end
    
    s = sprintf('%d persons detected', numberOfObjects);
    title(s)
    
    
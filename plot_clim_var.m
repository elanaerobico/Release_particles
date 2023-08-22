function plot_clim_var(var_mean,error,fecha,ymin,ymax,vert_line,col)
%hola
jdx = size(fecha,1)-size(var_mean,1)+1;
 var_mean(93)= mean([var_mean(91),var_mean(92)]);
 error(93)= mean([error(91),error(92)]);

shadedErrorBar_campbell(datenum(fecha(1:end-jdx)),var_mean(1:end-1),error(1:end-1),'lineprops',{col,...
            'linewidth',1,'linestyle','-'},'transparent',true,'patchsaturation',0.12);hold on
        line([vert_line(1),vert_line(1)],[ymin,ymax],'color',[0 0 0],'linestyle','-');
        line([vert_line(2),vert_line(2)],[ymin,ymax],'color',[0 0 0],'linestyle','-');
        line([vert_line(3),vert_line(3)],[ymin,ymax],'color',[0 0 0],'linestyle','-');
        line([vert_line(4),vert_line(4)],[ymin,ymax],'color',[0 0 0],'linestyle','-');
        line([vert_line(5),vert_line(5)],[ymin,ymax],'color',[0 0 0],'linestyle','-');
        datetick
        ylim([ymin ymax])

end
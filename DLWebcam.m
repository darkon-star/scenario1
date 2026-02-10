function DLWebcam;
net = alexnet;
inputSize = net.Layers(1).InputSize
N=100;
cam = webcam('FaceTime HD Camera') % change to your own webcam
for i=1:N,
img = snapshot(cam);
newimg = imresize(img,inputSize(1:2));
CName = classify(net,newimg);
imshow(img);
title(['Detected Object: ' CName])
drawnow;
end
clear('cam')



function DLPhonecam;
net = alexnet;

inputSize = net.Layers(1).InputSize
N=100;
% Using smartphone camera
m = mobiledev;
cam = camera(m, 'back');
for i=1:N
img = snapshot(cam, 'immediate');
newimg = imresize(img, inputSize(1:2));
CName = classify(net, newimg);
imshow(img);
title(['Detected Object: ' char(CName)])
drawnow;
end
end
clear('cam')

>> Sc = 'Hello';
>> system(sprintf('say %s', Sc));

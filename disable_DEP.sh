cd "/Volumes/MacOS/System/Library";
cd ../../etc;
echo "0.0.0.0 iprofiles.apple.com" >> hosts;
echo "0.0.0.0 mdmenrollment.apple.com" >> hosts;
echo "0.0.0.0 deviceenrollment.apple.com" >> hosts;
echo "0.0.0.0 gdmf.apple.com" >> hosts;
reboot;
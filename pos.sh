rm -rf .repo/local_manifests/
#repo init rom
repo init -u https://github.com/PixelOS-AOSP/manifest.git -b fourteen --git-lfs
#Local manifests
git clone https://github.com/IgrisArise/local_manifests -b pos .repo/local_manifests

#build
/opt/crave/resync.sh
. build/envsetup.sh
lunch aosp_veux-ap1a-userdebug
make installclean
make bacon

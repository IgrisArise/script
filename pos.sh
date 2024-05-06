rm -rf .repo/local_manifests/
#repo init rom
repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs
#Local manifests
git clone https://github.com/IgrisArise/local_manifests -b main .repo/local_manifests

#build
/opt/crave/resync.sh
. build/envsetup.sh
lunch lineage_veux-ap1a-userdebug || lunch lineage_veux-userdebug
make installclean
brunch veux

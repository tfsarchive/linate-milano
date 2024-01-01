import shutil
import os


basedir = os.getcwd()
pardir = os.pardir
installdir = (os.path.basename(os.path.abspath(os.path.join(basedir, pardir))))

badpath = False
if installdir == 'Custom Scenery':
    xpdir = os.path.abspath(os.path.join(basedir, pardir, pardir))
elif installdir == 'lib':
    xpdir = os.path.abspath(os.path.join(basedir, pardir, pardir, pardir, pardir, pardir, ))
else:
    badpath = True


if badpath == False:
    vegetationdir = basedir + '/Vegetation'
    densitydir_high = basedir + '/OPTIONS/Forest_Density/High/Vegetation'
    densitydir_normal = basedir + '/OPTIONS/Forest_Density/Normal/Vegetation'
    librarydir_allcolors = basedir + '/OPTIONS/Available_Colors/All_Colors'
    librarydir_default = basedir + '/OPTIONS/Available_Colors/Default'
    resourcesdir = xpdir + '/Resources/default scenery/1000 autogen/forests/textures'
    texturesdir = basedir + '/OPTIONS/Additional_Textures/Resources/default scenery/1000 autogen/forests/textures'
    backupdir = basedir + '/BACKUP'






def recursive_overwrite(src, dest, ignore=None):
    if os.path.isdir(src):
        if not os.path.isdir(dest):
            os.makedirs(dest)
        files = os.listdir(src)
        if ignore is not None:
            ignored = ignore(src, files)
        else:
            ignored = set()
        for f in files:
            if f not in ignored:
                recursive_overwrite(os.path.join(src, f), 
                                    os.path.join(dest, f), 
                                    ignore)
    else:
        shutil.copyfile(src, dest)






print("SAM GlobalTrees Configuration\n")
if badpath == False:
    try:
        shutil.copytree(resourcesdir, backupdir)
        print("Texture backup created.\n\n")
    except FileExistsError:
        print("Texture backup found.\n\n")




step = 0

while True:
    if badpath == True:
        data = input("Please install SAM GlobalTrees into either 'Custom Scenery' or 'Resources/Plugins/SAM/lib' folder.\n\n")
        if data not in ('q'):
            break
        else:
            break
    else:
        if step == 0:
            print("MAIN MENU")
            data = input("\nChoose an option to configure by typing in the corresponding number and confirm with enter.\n\n1) Textures Installation\n2) Forest Density\n3) Vegetation Colors\n4) Quit\n\n")
            if data not in ('1', '2', '3', '4'):
                print("\nPlease type 1, 2, 3 or 4 and press enter.\n\n")
            else:
                main_options = {
                    1: "textures",
                    2: "density",
                    3: "colors",
                    4: "quit"
                }
                main_option = main_options.get(int(data), "Invalid Option")
    
                if main_option == "textures":
                    step = 1
                elif main_option == "density":
                    step = 2
                elif main_option == "colors":
                    step = 3
                elif main_option == "quit":
                    break
    
        if step == 1:
            print("\nTEXTURES INSTALLATION")
            data = input("\nChoose textures to install by typing in the corresponding number and confirm with enter.\n\n1) Install additional SAM GlobalTrees textures\n2) Restore original X-Plane textures\n\n")
            if data not in ('1', '2'):
                print("\nPlease type 1 or 2 and press enter.\n\n")
            else:
                texture_options = {
                    1: "install",
                    2: "restore",
                }
                texture_option = texture_options.get(int(data), "Invalid Option")
        
                if texture_option == "install":
                    recursive_overwrite(texturesdir, resourcesdir)
                    print("\nSAM GlobalTrees textures installed.\n\n")
                    step = 0
                elif texture_option == "restore":
                    recursive_overwrite(backupdir, resourcesdir)
                    print("\nOriginal X-Plane textures restored from backup.\n\n")
                    step = 0
    
        if step == 2:
            print("\nFOREST DENSITY")
            data = input("\nChoose forest density by typing in the corresponding number and confirm with enter.\n\n1) High Density (Default)\n2) Normal Density\n\n")
            if data not in ('1', '2'):
                print("\nPlease type 1 or 2 and press enter.\n\n")
            else:
                density_options = {
                    1: "high",
                    2: "normal",
                }
                density = density_options.get(int(data), "Invalid Option")
        
                if density == "high":
                    recursive_overwrite(densitydir_high, vegetationdir)
                    print("\nHigh density vegetation installed.\n\n")
                    step = 0
                elif density == "normal":
                    recursive_overwrite(densitydir_normal, vegetationdir)
                    print("\nNormal density vegetation installed.\n\n")
                    step = 0
            
        if step == 3:
            print("\nVEGETATION COLORS")
            data = input("\nChoose available vegetation colors by typing in the corresponding number and confirm with enter.\n\n1) All Colors: SAM GlobalTrees replaces TerraFlora and SFD Global vegetation\n2) Default Colors: SAM GlobalTrees only replaces seasonal vegetation (Default)\n\n")
            if data not in ('1', '2'):
                print("\nPlease type 1 or 2 and press enter.\n\n")
            else:
                library_options = {
                    1: "allcolors",
                    2: "default",
                }
                library = library_options.get(int(data), "Invalid Option")
            
                if library == "allcolors":
                    recursive_overwrite(librarydir_allcolors, basedir)
                    print("\nAll vegetation colors installed.\n\n")
                    step = 0
                elif library == "default":
                    recursive_overwrite(librarydir_default, basedir)
                    print("\nDefault colors installed.\n\n")
                    step = 0
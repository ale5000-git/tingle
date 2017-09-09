.method private allowSDWrite(Landroid/content/pm/PackageParser$Package;)V
    .registers 8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    move-object/from16 v1, v0

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {v1}, Lcom/android/server/pm/PackageSetting;->getPermissionsState()Lcom/android/server/pm/PermissionsState;

    move-result-object v1

    move-object/from16 v2, v1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    move-object/from16 v1, v0

    move-object/from16 v0, v1

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPermissions:Landroid/util/ArrayMap;

    move-object/from16 v1, v0

    move-object/from16 v0, v1

    const-string/jumbo v1, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    return-void

    :cond_29
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/BasePermission;

    if-nez v4, :cond_32

    return-void

    :cond_32
    invoke-virtual {v2, v4}, Lcom/android/server/pm/PermissionsState;->grantInstallPermission(Lcom/android/server/pm/BasePermission;)I

    move-result v5

    return-void
.end method

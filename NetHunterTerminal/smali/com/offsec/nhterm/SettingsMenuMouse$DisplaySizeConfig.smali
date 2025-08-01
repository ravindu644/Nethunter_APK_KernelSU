.class Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig;
.super Lcom/offsec/nhterm/SettingsMenu$Menu;
.source "SettingsMenuMouse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nhterm/SettingsMenuMouse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DisplaySizeConfig"
.end annotation


# instance fields
.field firstStart:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/offsec/nhterm/SettingsMenu$Menu;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig;->firstStart:Z

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nhterm/SettingsMenu$Menu;-><init>()V

    iput-boolean p1, p0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig;->firstStart:Z

    return-void
.end method


# virtual methods
.method run(Lcom/offsec/nhterm/MainActivity;)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/offsec/nhterm/xorg/R$string;->display_size_small:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/offsec/nhterm/xorg/R$string;->display_size_small_touchpad:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/offsec/nhterm/xorg/R$string;->display_size_large:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v6, Lcom/offsec/nhterm/xorg/R$string;->display_size_desktop:I

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-boolean v2, Lcom/offsec/nhterm/Globals;->SwVideoMode:Z

    if-nez v2, :cond_0

    new-array v1, v6, [Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/offsec/nhterm/xorg/R$string;->display_size_small_touchpad:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/offsec/nhterm/xorg/R$string;->display_size_large:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v7, Lcom/offsec/nhterm/xorg/R$string;->display_size_desktop:I

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x3e8

    const/4 v2, 0x2

    const/4 v7, 0x1

    const/16 v10, 0x3e8

    const/4 v11, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    const/4 v7, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    :goto_0
    iget-boolean v12, v8, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig;->firstStart:Z

    if-eqz v12, :cond_1

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/offsec/nhterm/xorg/R$string;->display_size_small:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/offsec/nhterm/xorg/R$string;->display_size_small_touchpad:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v4

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/offsec/nhterm/xorg/R$string;->display_size_large:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v5

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/offsec/nhterm/xorg/R$string;->display_size_desktop:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v6

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/offsec/nhterm/xorg/R$string;->show_more_options:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v0

    sget-boolean v12, Lcom/offsec/nhterm/Globals;->SwVideoMode:Z

    if-nez v12, :cond_1

    new-array v1, v0, [Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v12, Lcom/offsec/nhterm/xorg/R$string;->display_size_small_touchpad:I

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/offsec/nhterm/xorg/R$string;->display_size_large:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/offsec/nhterm/xorg/R$string;->display_size_desktop:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    invoke-virtual/range {p1 .. p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/offsec/nhterm/xorg/R$string;->show_more_options:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    move-object v12, v1

    goto :goto_1

    :cond_1
    move-object v12, v1

    const/4 v6, 0x4

    :goto_1
    new-instance v13, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v13, v9}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/offsec/nhterm/xorg/R$string;->display_size:I

    invoke-virtual {v13, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v14, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;

    move-object v0, v14

    move-object v1, p0

    move v3, v7

    move v4, v10

    move v5, v11

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1ClickListener;-><init>(Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig;IIIIILcom/offsec/nhterm/MainActivity;)V

    invoke-virtual {v13, v12, v14}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1;

    invoke-direct {v0, p0, v9}, Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig$1;-><init>(Lcom/offsec/nhterm/SettingsMenuMouse$DisplaySizeConfig;Lcom/offsec/nhterm/MainActivity;)V

    invoke-virtual {v13, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v13}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroidx/appcompat/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method title(Lcom/offsec/nhterm/MainActivity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Lcom/offsec/nhterm/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/offsec/nhterm/xorg/R$string;->display_size_mouse:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

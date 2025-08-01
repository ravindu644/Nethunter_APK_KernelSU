.class Lcom/offsec/nhterm/SettingsMenuMisc$ShowReadme;
.super Lcom/offsec/nhterm/SettingsMenu$Menu;
.source "SettingsMenuMisc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/offsec/nhterm/SettingsMenuMisc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ShowReadme"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/offsec/nhterm/SettingsMenu$Menu;-><init>()V

    return-void
.end method


# virtual methods
.method enabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method run(Lcom/offsec/nhterm/MainActivity;)V
    .locals 12

    sget-object v0, Lcom/offsec/nhterm/Globals;->ReadmeText:Ljava/lang/String;

    const-string v1, "\\^"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/offsec/nhterm/MainActivity;->isRunningOnOUYA()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v1, "tv:"

    :cond_0
    const/4 v3, 0x0

    aget-object v4, v0, v3

    array-length v5, v0

    const-string v6, ""

    move-object v7, v6

    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v5, :cond_3

    aget-object v10, v0, v8

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    const-string v11, "button:"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v6, 0x7

    invoke-virtual {v10, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/2addr v7, v9

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v6, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_4

    invoke-static {p1}, Lcom/offsec/nhterm/SettingsMenu;->goBack(Lcom/offsec/nhterm/MainActivity;)V

    return-void

    :cond_4
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x5

    const/16 v4, 0x14

    invoke-virtual {v1, v3, v0, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ScrollView;

    invoke-direct {v4, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->setFocusable(Z)V

    invoke-virtual {v4, v3}, Landroid/widget/ScrollView;->setFocusableInTouchMode(Z)V

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v5}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    new-array v2, v9, [Landroidx/appcompat/app/AlertDialog;

    new-instance v5, Lcom/offsec/nhterm/SettingsMenuMisc$ShowReadme$1;

    invoke-direct {v5, p0, v2}, Lcom/offsec/nhterm/SettingsMenuMisc$ShowReadme$1;-><init>(Lcom/offsec/nhterm/SettingsMenuMisc$ShowReadme;[Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v5, Lcom/offsec/nhterm/xorg/R$string;->ok:I

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/offsec/nhterm/SettingsMenuMisc$ShowReadme$2;

    invoke-direct {v4, p0, v7, p1, v2}, Lcom/offsec/nhterm/SettingsMenuMisc$ShowReadme$2;-><init>(Lcom/offsec/nhterm/SettingsMenuMisc$ShowReadme;Ljava/lang/String;Lcom/offsec/nhterm/MainActivity;[Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {v0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v1, Lcom/offsec/nhterm/SettingsMenuMisc$ShowReadme$3;

    invoke-direct {v1, p0, p1}, Lcom/offsec/nhterm/SettingsMenuMisc$ShowReadme$3;-><init>(Lcom/offsec/nhterm/SettingsMenuMisc$ShowReadme;Lcom/offsec/nhterm/MainActivity;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setOwnerActivity(Landroid/app/Activity;)V

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->show()V

    return-void
.end method

.method title(Lcom/offsec/nhterm/MainActivity;)Ljava/lang/String;
    .locals 0

    const-string p1, "Readme"

    return-object p1
.end method

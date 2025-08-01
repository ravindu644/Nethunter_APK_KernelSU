.class public Lcom/hijacker/FileExplorerDialog;
.super Landroid/app/DialogFragment;
.source "FileExplorerDialog.java"


# static fields
.field static final SELECT_DIR:I = 0x2

.field static final SELECT_EXISTING_FILE:I = 0x1

.field static list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hijacker/RootFile;",
            ">;"
        }
    .end annotation
.end field

.field static pref:Landroid/content/SharedPreferences;


# instance fields
.field backButton:Landroid/widget/ImageButton;

.field buttonsLayout:Landroid/widget/RelativeLayout;

.field current:Lcom/hijacker/RootFile;

.field currentDir:Landroid/widget/TextView;

.field listView:Landroid/widget/ListView;

.field newFolderButton:Landroid/widget/ImageButton;

.field onCancel:Ljava/lang/Runnable;

.field onSelect:Ljava/lang/Runnable;

.field result:Lcom/hijacker/RootFile;

.field start:Lcom/hijacker/RootFile;

.field toSelect:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hijacker/FileExplorerDialog;->result:Lcom/hijacker/RootFile;

    iput-object v0, p0, Lcom/hijacker/FileExplorerDialog;->onSelect:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/hijacker/FileExplorerDialog;->onCancel:Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/hijacker/FileExplorerDialog;->start:Lcom/hijacker/RootFile;

    iput-object v0, p0, Lcom/hijacker/FileExplorerDialog;->current:Lcom/hijacker/RootFile;

    const/4 v0, 0x0

    iput v0, p0, Lcom/hijacker/FileExplorerDialog;->toSelect:I

    return-void
.end method


# virtual methods
.method goToDirectory(Lcom/hijacker/RootFile;)V
    .locals 2

    :goto_0
    invoke-virtual {p1}, Lcom/hijacker/RootFile;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/hijacker/RootFile;

    invoke-virtual {p1}, Lcom/hijacker/RootFile;->getParentPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog;->current:Lcom/hijacker/RootFile;

    invoke-virtual {p1}, Lcom/hijacker/RootFile;->listFiles()Ljava/util/List;

    move-result-object p1

    sput-object p1, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    const/4 p1, 0x0

    :goto_1
    sget-object v0, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    iget v0, p0, Lcom/hijacker/FileExplorerDialog;->toSelect:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hijacker/RootFile;

    invoke-virtual {v0}, Lcom/hijacker/RootFile;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    sget-object v0, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hijacker/RootFile;

    invoke-virtual {v0}, Lcom/hijacker/RootFile;->isUnknownType()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/hijacker/FileExplorerDialog;->list:Ljava/util/List;

    new-instance v0, Lcom/hijacker/FileExplorerDialog$6;

    invoke-direct {v0, p0}, Lcom/hijacker/FileExplorerDialog$6;-><init>(Lcom/hijacker/FileExplorerDialog;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    sget-object p1, Lcom/hijacker/MainActivity;->file_explorer_adapter:Lcom/hijacker/MainActivity$FileExplorerAdapter;

    invoke-virtual {p1}, Lcom/hijacker/MainActivity$FileExplorerAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/hijacker/FileExplorerDialog;->backButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/hijacker/FileExplorerDialog;->current:Lcom/hijacker/RootFile;

    invoke-virtual {v0}, Lcom/hijacker/RootFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object p1, p0, Lcom/hijacker/FileExplorerDialog;->currentDir:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hijacker/FileExplorerDialog;->current:Lcom/hijacker/RootFile;

    invoke-virtual {v0}, Lcom/hijacker/RootFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/FileExplorerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/hijacker/FileExplorerDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0038

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hijacker/FileExplorerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    sput-object v1, Lcom/hijacker/FileExplorerDialog;->pref:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    const-string v3, "running_on_wearos"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const v3, 0x7f090095

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/hijacker/FileExplorerDialog;->currentDir:Landroid/widget/TextView;

    const v3, 0x7f090053

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/hijacker/FileExplorerDialog;->backButton:Landroid/widget/ImageButton;

    const v3, 0x7f09015d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/hijacker/FileExplorerDialog;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/hijacker/FileExplorerDialog;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x32

    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/hijacker/FileExplorerDialog;->buttonsLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/hijacker/FileExplorerDialog;->backButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/hijacker/FileExplorerDialog$1;

    invoke-direct {v3, p0}, Lcom/hijacker/FileExplorerDialog$1;-><init>(Lcom/hijacker/FileExplorerDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090132

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/hijacker/FileExplorerDialog;->newFolderButton:Landroid/widget/ImageButton;

    iget v3, p0, Lcom/hijacker/FileExplorerDialog;->toSelect:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/hijacker/FileExplorerDialog;->newFolderButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/hijacker/FileExplorerDialog$2;

    invoke-direct {v2, p0}, Lcom/hijacker/FileExplorerDialog$2;-><init>(Lcom/hijacker/FileExplorerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/hijacker/FileExplorerDialog;->listView:Landroid/widget/ListView;

    sget-object v2, Lcom/hijacker/MainActivity;->file_explorer_adapter:Lcom/hijacker/MainActivity$FileExplorerAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/hijacker/FileExplorerDialog;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/hijacker/FileExplorerDialog$3;

    invoke-direct {v2, p0}, Lcom/hijacker/FileExplorerDialog$3;-><init>(Lcom/hijacker/FileExplorerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget v0, p0, Lcom/hijacker/FileExplorerDialog;->toSelect:I

    if-ne v0, v4, :cond_2

    const v0, 0x7f10014d

    new-instance v1, Lcom/hijacker/FileExplorerDialog$4;

    invoke-direct {v1, p0}, Lcom/hijacker/FileExplorerDialog$4;-><init>(Lcom/hijacker/FileExplorerDialog;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    const v0, 0x7f10003e

    new-instance v1, Lcom/hijacker/FileExplorerDialog$5;

    invoke-direct {v1, p0}, Lcom/hijacker/FileExplorerDialog$5;-><init>(Lcom/hijacker/FileExplorerDialog;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/hijacker/FileExplorerDialog;->start:Lcom/hijacker/RootFile;

    if-nez v0, :cond_3

    new-instance v0, Lcom/hijacker/RootFile;

    const-string v1, "/"

    invoke-direct {v0, v1}, Lcom/hijacker/RootFile;-><init>(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, v0}, Lcom/hijacker/FileExplorerDialog;->goToDirectory(Lcom/hijacker/RootFile;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method onSelect(Lcom/hijacker/RootFile;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog;->result:Lcom/hijacker/RootFile;

    iget-object p1, p0, Lcom/hijacker/FileExplorerDialog;->onSelect:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_0
    invoke-virtual {p0}, Lcom/hijacker/FileExplorerDialog;->dismissAllowingStateLoss()V

    return-void
.end method

.method setOnCancel(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog;->onCancel:Ljava/lang/Runnable;

    return-void
.end method

.method setOnSelect(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog;->onSelect:Ljava/lang/Runnable;

    return-void
.end method

.method setStartingDir(Lcom/hijacker/RootFile;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/FileExplorerDialog;->start:Lcom/hijacker/RootFile;

    return-void
.end method

.method setToSelect(I)V
    .locals 0

    iput p1, p0, Lcom/hijacker/FileExplorerDialog;->toSelect:I

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/hijacker/MainActivity;->background:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

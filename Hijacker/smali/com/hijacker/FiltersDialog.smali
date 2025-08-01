.class public Lcom/hijacker/FiltersDialog;
.super Landroid/app/DialogFragment;
.source "FiltersDialog.java"


# instance fields
.field apCb:Landroid/widget/CheckBox;

.field channelCb:[Landroid/widget/CheckBox;

.field manufView:Landroid/widget/EditText;

.field opnCb:Landroid/widget/CheckBox;

.field pwrTv:Landroid/widget/TextView;

.field seek:Landroid/widget/SeekBar;

.field sortReverseCb:Landroid/widget/CheckBox;

.field sortSelectBtn:Landroid/widget/Button;

.field sort_texts:[Ljava/lang/String;

.field stCb:Landroid/widget/CheckBox;

.field stNaCb:Landroid/widget/CheckBox;

.field temp_sort:I

.field view:Landroid/view/View;

.field wepCb:Landroid/widget/CheckBox;

.field wpaCb:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/16 v0, 0xf

    new-array v0, v0, [Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method apply()V
    .locals 3

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->apCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->show_ap:Z

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->stCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->show_st:Z

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->stNaCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->show_na_st:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/hijacker/MainActivity;->show_ch:[Z

    iget-object v2, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->wpaCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->wpa:Z

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->wepCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->wep:Z

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->opnCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->opn:Z

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->seek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    sput v0, Lcom/hijacker/MainActivity;->pwr_filter:I

    iget v0, p0, Lcom/hijacker/FiltersDialog;->temp_sort:I

    sput v0, Lcom/hijacker/MainActivity;->sort:I

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->sortReverseCb:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    sput-boolean v0, Lcom/hijacker/MainActivity;->sort_reverse:Z

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->manufView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hijacker/MainActivity;->manuf_filter:Ljava/lang/String;

    invoke-static {}, Lcom/hijacker/Tile;->filter()V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/FiltersDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/hijacker/FiltersDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0039

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/String;

    const v2, 0x7f100167

    invoke-virtual {p0, v2}, Lcom/hijacker/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f100166

    invoke-virtual {p0, v2}, Lcom/hijacker/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const v2, 0x7f100164

    invoke-virtual {p0, v2}, Lcom/hijacker/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const v2, 0x7f100165

    invoke-virtual {p0, v2}, Lcom/hijacker/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const v2, 0x7f100168

    invoke-virtual {p0, v2}, Lcom/hijacker/FiltersDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    iput-object v1, p0, Lcom/hijacker/FiltersDialog;->sort_texts:[Ljava/lang/String;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f090048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/hijacker/FiltersDialog;->apCb:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f090195

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/hijacker/FiltersDialog;->stCb:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f090198

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/hijacker/FiltersDialog;->stNaCb:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v8, 0x7f09006f

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v3, 0x7f090061

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    aput-object v2, v1, v4

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v3, 0x7f090067

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v3, 0x7f090068

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    aput-object v2, v1, v6

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v3, 0x7f090069

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    aput-object v2, v1, v7

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v3, 0x7f09006a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    aput-object v2, v1, v0

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f09006b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f09006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f09006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f090064

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f090065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v1, 0x7f090072

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/hijacker/FiltersDialog;->wpaCb:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/hijacker/FiltersDialog;->wepCb:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/hijacker/FiltersDialog;->opnCb:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v1, 0x7f090176

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/hijacker/FiltersDialog;->seek:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/hijacker/FiltersDialog;->manufView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v1, 0x7f09017b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/hijacker/FiltersDialog;->sortSelectBtn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v1, 0x7f09018c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/hijacker/FiltersDialog;->sortReverseCb:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/hijacker/FiltersDialog;->pwrTv:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->seek:Landroid/widget/SeekBar;

    new-instance v1, Lcom/hijacker/FiltersDialog$1;

    invoke-direct {v1, p0}, Lcom/hijacker/FiltersDialog$1;-><init>(Lcom/hijacker/FiltersDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->manufView:Landroid/widget/EditText;

    new-instance v1, Lcom/hijacker/FiltersDialog$2;

    invoke-direct {v1, p0}, Lcom/hijacker/FiltersDialog$2;-><init>(Lcom/hijacker/FiltersDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->sortSelectBtn:Landroid/widget/Button;

    new-instance v1, Lcom/hijacker/FiltersDialog$3;

    invoke-direct {v1, p0}, Lcom/hijacker/FiltersDialog$3;-><init>(Lcom/hijacker/FiltersDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->view:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1000a2

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/FiltersDialog$4;

    invoke-direct {v0, p0}, Lcom/hijacker/FiltersDialog$4;-><init>(Lcom/hijacker/FiltersDialog;)V

    const v1, 0x7f10003e

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/FiltersDialog$5;

    invoke-direct {v0, p0}, Lcom/hijacker/FiltersDialog$5;-><init>(Lcom/hijacker/FiltersDialog;)V

    const v1, 0x7f100030

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->apCb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/MainActivity;->show_ap:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->stCb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/MainActivity;->show_st:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->stNaCb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/MainActivity;->show_na_st:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->channelCb:[Landroid/widget/CheckBox;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v1, v1, v0

    sget-object v2, Lcom/hijacker/MainActivity;->show_ch:[Z

    aget-boolean v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->wpaCb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/MainActivity;->wpa:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->wepCb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/MainActivity;->wep:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->opnCb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/MainActivity;->opn:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->seek:Landroid/widget/SeekBar;

    sget v1, Lcom/hijacker/MainActivity;->pwr_filter:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->pwrTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/hijacker/MainActivity;->pwr_filter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->manufView:Landroid/widget/EditText;

    sget-object v1, Lcom/hijacker/MainActivity;->manuf_filter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->sortSelectBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->sort_texts:[Ljava/lang/String;

    sget v2, Lcom/hijacker/MainActivity;->sort:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/FiltersDialog;->sortReverseCb:Landroid/widget/CheckBox;

    sget-boolean v1, Lcom/hijacker/MainActivity;->sort_reverse:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    sget v0, Lcom/hijacker/MainActivity;->sort:I

    iput v0, p0, Lcom/hijacker/FiltersDialog;->temp_sort:I

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

.method showSortingPopup(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroidx/appcompat/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/hijacker/FiltersDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {p1, v2, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->sort_texts:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {p1, v2, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->sort_texts:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->sort_texts:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->sort_texts:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object v1, p0, Lcom/hijacker/FiltersDialog;->sort_texts:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v1, v1, v3

    invoke-interface {p1, v2, v3, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    new-instance p1, Lcom/hijacker/FiltersDialog$6;

    invoke-direct {p1, p0}, Lcom/hijacker/FiltersDialog$6;-><init>(Lcom/hijacker/FiltersDialog;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    invoke-virtual {v0}, Landroidx/appcompat/widget/PopupMenu;->show()V

    return-void
.end method

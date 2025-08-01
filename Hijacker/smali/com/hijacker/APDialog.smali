.class public Lcom/hijacker/APDialog;
.super Lcom/hijacker/DeviceDialog;
.source "APDialog.java"


# instance fields
.field ap:Lcom/hijacker/AP;

.field views:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/hijacker/DeviceDialog;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/APDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/hijacker/APDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f0900b4

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f0900fe

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f090076

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f090152

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f0900ae

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f09004f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f09007d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f090055

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f09009a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f0900e8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f090080

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f090103

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f0900ec

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget-object v0, v0, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/APDialog$1;

    invoke-direct {v0, p0}, Lcom/hijacker/APDialog$1;-><init>(Lcom/hijacker/APDialog;)V

    const v1, 0x7f10005a

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method onRefresh()V
    .locals 7

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget-object v2, v2, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget-object v3, v3, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget v5, v5, Lcom/hijacker/AP;->ch:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget v6, v6, Lcom/hijacker/AP;->pwr:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget-object v3, v3, Lcom/hijacker/AP;->enc:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/4 v3, 0x5

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget-object v3, v3, Lcom/hijacker/AP;->auth:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/4 v3, 0x6

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget-object v3, v3, Lcom/hijacker/AP;->cipher:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/4 v3, 0x7

    aget-object v0, v0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    invoke-virtual {v6}, Lcom/hijacker/AP;->getBeacons()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/16 v3, 0x8

    aget-object v0, v0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    invoke-virtual {v6}, Lcom/hijacker/AP;->getData()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/16 v3, 0x9

    aget-object v0, v0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    invoke-virtual {v6}, Lcom/hijacker/AP;->getIvs()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/16 v3, 0xa

    aget-object v0, v0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget-object v4, v4, Lcom/hijacker/AP;->clients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget-object v1, v1, Lcom/hijacker/AP;->manuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/APDialog;->views:[Landroid/widget/TextView;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    iget-wide v1, v1, Lcom/hijacker/AP;->lastseen:J

    invoke-static {v1, v2}, Lcom/hijacker/MainActivity;->getLastSeen(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setAP(Lcom/hijacker/AP;)Lcom/hijacker/APDialog;
    .locals 0

    iput-object p1, p0, Lcom/hijacker/APDialog;->ap:Lcom/hijacker/AP;

    return-object p0
.end method

.class public Lcom/hijacker/STDialog;
.super Landroid/app/DialogFragment;
.source "STDialog.java"


# instance fields
.field st:Lcom/hijacker/ST;

.field views:[Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/16 v0, 0x8

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

    iput-object v0, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/hijacker/STDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/hijacker/STDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0070

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f0900ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f09005b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f090153

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f0900cc

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f0900fa

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f090105

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f0900ed

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const v2, 0x7f09014a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    iget-object v0, v0, Lcom/hijacker/ST;->mac:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/hijacker/STDialog$1;

    invoke-direct {v0, p0}, Lcom/hijacker/STDialog$1;-><init>(Lcom/hijacker/STDialog;)V

    const v1, 0x7f10005a

    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method onRefresh()V
    .locals 7

    iget-object v0, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    iget-object v2, v2, Lcom/hijacker/ST;->mac:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    iget-object v0, v0, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    const v3, 0x7f100117

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    iget-object v4, v4, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    iget-object v4, v4, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    iget-object v4, v4, Lcom/hijacker/ST;->connectedTo:Lcom/hijacker/AP;

    iget-object v4, v4, Lcom/hijacker/AP;->essid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    iget v5, v5, Lcom/hijacker/ST;->pwr:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    invoke-virtual {v6}, Lcom/hijacker/ST;->getFrames()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    invoke-virtual {v4}, Lcom/hijacker/ST;->getLost()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    iget-object v1, v1, Lcom/hijacker/ST;->manuf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const/4 v1, 0x6

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    iget-wide v1, v1, Lcom/hijacker/ST;->lastseen:J

    invoke-static {v1, v2}, Lcom/hijacker/MainActivity;->getLastSeen(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/hijacker/STDialog;->views:[Landroid/widget/TextView;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    iget-object v1, v1, Lcom/hijacker/ST;->probes:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setST(Lcom/hijacker/ST;)Lcom/hijacker/STDialog;
    .locals 0

    iput-object p1, p0, Lcom/hijacker/STDialog;->st:Lcom/hijacker/ST;

    return-object p0
.end method

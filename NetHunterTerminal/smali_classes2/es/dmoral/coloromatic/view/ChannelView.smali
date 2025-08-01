.class public Les/dmoral/coloromatic/view/ChannelView;
.super Landroid/widget/RelativeLayout;
.source "ChannelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Les/dmoral/coloromatic/view/ChannelView$OnProgressChangedListener;
    }
.end annotation


# instance fields
.field private final channel:Les/dmoral/coloromatic/colormode/Channel;

.field private context:Landroid/content/Context;

.field private listener:Les/dmoral/coloromatic/view/ChannelView$OnProgressChangedListener;


# direct methods
.method public constructor <init>(Les/dmoral/coloromatic/colormode/Channel;ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Les/dmoral/coloromatic/view/ChannelView;->channel:Les/dmoral/coloromatic/colormode/Channel;

    iput-object p3, p0, Les/dmoral/coloromatic/view/ChannelView;->context:Landroid/content/Context;

    invoke-virtual {p1}, Les/dmoral/coloromatic/colormode/Channel;->getExtractor()Les/dmoral/coloromatic/colormode/Channel$ColorExtractor;

    move-result-object v0

    invoke-interface {v0, p2}, Les/dmoral/coloromatic/colormode/Channel$ColorExtractor;->extract(I)I

    move-result p2

    invoke-virtual {p1, p2}, Les/dmoral/coloromatic/colormode/Channel;->setProgress(I)V

    invoke-virtual {p1}, Les/dmoral/coloromatic/colormode/Channel;->getProgress()I

    move-result p2

    invoke-virtual {p1}, Les/dmoral/coloromatic/colormode/Channel;->getMin()I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-virtual {p1}, Les/dmoral/coloromatic/colormode/Channel;->getProgress()I

    move-result p2

    invoke-virtual {p1}, Les/dmoral/coloromatic/colormode/Channel;->getMax()I

    move-result v0

    if-gt p2, v0, :cond_0

    sget p1, Les/dmoral/coloromatic/R$layout;->channel_row:I

    invoke-static {p3, p1, p0}, Les/dmoral/coloromatic/view/ChannelView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Les/dmoral/coloromatic/view/ChannelView;->bindViews(Landroid/view/View;)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Initial progress for channel: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must be between "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Les/dmoral/coloromatic/colormode/Channel;->getMin()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Les/dmoral/coloromatic/colormode/Channel;->getMax()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method static synthetic access$000(Les/dmoral/coloromatic/view/ChannelView;)Les/dmoral/coloromatic/colormode/Channel;
    .locals 0

    iget-object p0, p0, Les/dmoral/coloromatic/view/ChannelView;->channel:Les/dmoral/coloromatic/colormode/Channel;

    return-object p0
.end method

.method static synthetic access$100(Les/dmoral/coloromatic/view/ChannelView;)Les/dmoral/coloromatic/view/ChannelView$OnProgressChangedListener;
    .locals 0

    iget-object p0, p0, Les/dmoral/coloromatic/view/ChannelView;->listener:Les/dmoral/coloromatic/view/ChannelView$OnProgressChangedListener;

    return-object p0
.end method

.method private bindViews(Landroid/view/View;)V
    .locals 3

    sget v0, Les/dmoral/coloromatic/R$id;->label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Les/dmoral/coloromatic/view/ChannelView;->context:Landroid/content/Context;

    iget-object v2, p0, Les/dmoral/coloromatic/view/ChannelView;->channel:Les/dmoral/coloromatic/colormode/Channel;

    invoke-virtual {v2}, Les/dmoral/coloromatic/colormode/Channel;->getNameResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Les/dmoral/coloromatic/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    iget-object v0, p0, Les/dmoral/coloromatic/view/ChannelView;->channel:Les/dmoral/coloromatic/colormode/Channel;

    invoke-virtual {v0}, Les/dmoral/coloromatic/colormode/Channel;->getMax()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object v0, p0, Les/dmoral/coloromatic/view/ChannelView;->channel:Les/dmoral/coloromatic/colormode/Channel;

    invoke-virtual {v0}, Les/dmoral/coloromatic/colormode/Channel;->getProgress()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    new-instance v0, Les/dmoral/coloromatic/view/ChannelView$1;

    invoke-direct {v0, p0}, Les/dmoral/coloromatic/view/ChannelView$1;-><init>(Les/dmoral/coloromatic/view/ChannelView;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method


# virtual methods
.method public getChannel()Les/dmoral/coloromatic/colormode/Channel;
    .locals 1

    iget-object v0, p0, Les/dmoral/coloromatic/view/ChannelView;->channel:Les/dmoral/coloromatic/colormode/Channel;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Les/dmoral/coloromatic/view/ChannelView;->listener:Les/dmoral/coloromatic/view/ChannelView$OnProgressChangedListener;

    return-void
.end method

.method public registerListener(Les/dmoral/coloromatic/view/ChannelView$OnProgressChangedListener;)V
    .locals 0

    iput-object p1, p0, Les/dmoral/coloromatic/view/ChannelView;->listener:Les/dmoral/coloromatic/view/ChannelView$OnProgressChangedListener;

    return-void
.end method

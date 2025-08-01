.class public final Les/dmoral/coloromatic/colormode/Channel;
.super Ljava/lang/Object;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Les/dmoral/coloromatic/colormode/Channel$ColorExtractor;
    }
.end annotation


# instance fields
.field private final extractor:Les/dmoral/coloromatic/colormode/Channel$ColorExtractor;

.field private final max:I

.field private final min:I

.field private final nameResourceId:I

.field private progress:I


# direct methods
.method public constructor <init>(IIIILes/dmoral/coloromatic/colormode/Channel$ColorExtractor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Les/dmoral/coloromatic/colormode/Channel;->nameResourceId:I

    iput p2, p0, Les/dmoral/coloromatic/colormode/Channel;->min:I

    iput p3, p0, Les/dmoral/coloromatic/colormode/Channel;->max:I

    iput-object p5, p0, Les/dmoral/coloromatic/colormode/Channel;->extractor:Les/dmoral/coloromatic/colormode/Channel$ColorExtractor;

    iput p4, p0, Les/dmoral/coloromatic/colormode/Channel;->progress:I

    return-void
.end method

.method public constructor <init>(IIILes/dmoral/coloromatic/colormode/Channel$ColorExtractor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Les/dmoral/coloromatic/colormode/Channel;->progress:I

    iput p1, p0, Les/dmoral/coloromatic/colormode/Channel;->nameResourceId:I

    iput p2, p0, Les/dmoral/coloromatic/colormode/Channel;->min:I

    iput p3, p0, Les/dmoral/coloromatic/colormode/Channel;->max:I

    iput-object p4, p0, Les/dmoral/coloromatic/colormode/Channel;->extractor:Les/dmoral/coloromatic/colormode/Channel$ColorExtractor;

    return-void
.end method


# virtual methods
.method public getExtractor()Les/dmoral/coloromatic/colormode/Channel$ColorExtractor;
    .locals 1

    iget-object v0, p0, Les/dmoral/coloromatic/colormode/Channel;->extractor:Les/dmoral/coloromatic/colormode/Channel$ColorExtractor;

    return-object v0
.end method

.method public getMax()I
    .locals 1

    iget v0, p0, Les/dmoral/coloromatic/colormode/Channel;->max:I

    return v0
.end method

.method public getMin()I
    .locals 1

    iget v0, p0, Les/dmoral/coloromatic/colormode/Channel;->min:I

    return v0
.end method

.method public getNameResourceId()I
    .locals 1

    iget v0, p0, Les/dmoral/coloromatic/colormode/Channel;->nameResourceId:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    iget v0, p0, Les/dmoral/coloromatic/colormode/Channel;->progress:I

    return v0
.end method

.method public setProgress(I)V
    .locals 0

    iput p1, p0, Les/dmoral/coloromatic/colormode/Channel;->progress:I

    return-void
.end method

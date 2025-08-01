.class Lcom/hijacker/Tile$3;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hijacker/Tile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/hijacker/Tile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/hijacker/Tile;Lcom/hijacker/Tile;)I
    .locals 1

    sget-boolean v0, Lcom/hijacker/MainActivity;->sort_reverse:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    check-cast p1, Lcom/hijacker/AP;

    invoke-virtual {p1}, Lcom/hijacker/AP;->getData()I

    move-result p1

    iget-object p2, p2, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    check-cast p2, Lcom/hijacker/AP;

    invoke-virtual {p2}, Lcom/hijacker/AP;->getData()I

    move-result p2

    sub-int/2addr p1, p2

    return p1

    :cond_0
    iget-object p2, p2, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    check-cast p2, Lcom/hijacker/AP;

    invoke-virtual {p2}, Lcom/hijacker/AP;->getData()I

    move-result p2

    iget-object p1, p1, Lcom/hijacker/Tile;->device:Lcom/hijacker/Device;

    check-cast p1, Lcom/hijacker/AP;

    invoke-virtual {p1}, Lcom/hijacker/AP;->getData()I

    move-result p1

    sub-int/2addr p2, p1

    return p2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/hijacker/Tile;

    check-cast p2, Lcom/hijacker/Tile;

    invoke-virtual {p0, p1, p2}, Lcom/hijacker/Tile$3;->compare(Lcom/hijacker/Tile;Lcom/hijacker/Tile;)I

    move-result p1

    return p1
.end method

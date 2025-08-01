.class Lcom/hijacker/ST$3;
.super Ljava/lang/Object;
.source "ST.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/ST;->update(Ljava/lang/String;IIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/ST;


# direct methods
.method constructor <init>(Lcom/hijacker/ST;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/ST$3;->this$0:Lcom/hijacker/ST;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/hijacker/ST$3;->this$0:Lcom/hijacker/ST;

    iget-object v0, v0, Lcom/hijacker/ST;->tile:Lcom/hijacker/Tile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/ST$3;->this$0:Lcom/hijacker/ST;

    iget-object v0, v0, Lcom/hijacker/ST;->tile:Lcom/hijacker/Tile;

    invoke-virtual {v0}, Lcom/hijacker/Tile;->update()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/ST$3;->this$0:Lcom/hijacker/ST;

    new-instance v1, Lcom/hijacker/Tile;

    sget-object v2, Lcom/hijacker/AP;->APs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/hijacker/ST$3;->this$0:Lcom/hijacker/ST;

    iget v3, v3, Lcom/hijacker/ST;->id:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/hijacker/ST$3;->this$0:Lcom/hijacker/ST;

    invoke-direct {v1, v2, v3}, Lcom/hijacker/Tile;-><init>(ILcom/hijacker/Device;)V

    iput-object v1, v0, Lcom/hijacker/ST;->tile:Lcom/hijacker/Tile;

    :goto_0
    sget-boolean v0, Lcom/hijacker/MainActivity;->toSort:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hijacker/Tile;->sort()V

    :cond_1
    return-void
.end method

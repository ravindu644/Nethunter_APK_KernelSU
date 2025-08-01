.class Lcom/hijacker/AP$1;
.super Ljava/lang/Object;
.source "AP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/AP;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hijacker/AP;


# direct methods
.method constructor <init>(Lcom/hijacker/AP;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/AP$1;->this$0:Lcom/hijacker/AP;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/hijacker/AP$1;->this$0:Lcom/hijacker/AP;

    iget-object v0, v0, Lcom/hijacker/AP;->tile:Lcom/hijacker/Tile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/AP$1;->this$0:Lcom/hijacker/AP;

    iget-object v0, v0, Lcom/hijacker/AP;->tile:Lcom/hijacker/Tile;

    invoke-virtual {v0}, Lcom/hijacker/Tile;->update()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/hijacker/AP$1;->this$0:Lcom/hijacker/AP;

    new-instance v1, Lcom/hijacker/Tile;

    iget-object v2, p0, Lcom/hijacker/AP$1;->this$0:Lcom/hijacker/AP;

    iget v2, v2, Lcom/hijacker/AP;->id:I

    iget-object v3, p0, Lcom/hijacker/AP$1;->this$0:Lcom/hijacker/AP;

    invoke-direct {v1, v2, v3}, Lcom/hijacker/Tile;-><init>(ILcom/hijacker/Device;)V

    iput-object v1, v0, Lcom/hijacker/AP;->tile:Lcom/hijacker/Tile;

    :goto_0
    sget-boolean v0, Lcom/hijacker/MainActivity;->toSort:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/hijacker/Tile;->sort()V

    :cond_1
    return-void
.end method

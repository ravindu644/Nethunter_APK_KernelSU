.class Lcom/hijacker/AP$2$2;
.super Ljava/lang/Object;
.source "AP.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hijacker/AP$2;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/hijacker/AP$2;

.field final synthetic val$dialog:Lcom/hijacker/EditTextDialog;


# direct methods
.method constructor <init>(Lcom/hijacker/AP$2;Lcom/hijacker/EditTextDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/hijacker/AP$2$2;->this$1:Lcom/hijacker/AP$2;

    iput-object p2, p0, Lcom/hijacker/AP$2$2;->val$dialog:Lcom/hijacker/EditTextDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/hijacker/AP$2$2;->val$dialog:Lcom/hijacker/EditTextDialog;

    iget-object v0, v0, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hijacker/AP$2$2;->val$dialog:Lcom/hijacker/EditTextDialog;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/hijacker/AP$2$2;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v0, v0, Lcom/hijacker/AP;->alias:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/hijacker/AP$2$2;->val$dialog:Lcom/hijacker/EditTextDialog;

    iget-object v3, v3, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    xor-int/2addr v0, v3

    const/16 v3, 0x20

    if-eqz v0, :cond_7

    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/hijacker/MainActivity;->data_path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/temp_aliases"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v4, Ljava/io/PrintWriter;

    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    sget-object v7, Lcom/hijacker/MainActivity;->aliases_file:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_6

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v3, :cond_4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x12

    if-le v8, v9, :cond_4

    invoke-virtual {v6, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/hijacker/AP$2$2;->this$1:Lcom/hijacker/AP$2;

    iget-object v8, v8, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v8, v8, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string v7, "HIJACKER/setup"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Aliases file format error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    sget-object v2, Lcom/hijacker/MainActivity;->aliases_file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    sget-object v2, Lcom/hijacker/MainActivity;->aliases_file:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    new-instance v0, Ljava/io/FileWriter;

    sget-object v2, Lcom/hijacker/MainActivity;->aliases_file:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v0, Lcom/hijacker/MainActivity;->aliases_in:Ljava/io/FileWriter;

    :cond_7
    iget-object v0, p0, Lcom/hijacker/AP$2$2;->val$dialog:Lcom/hijacker/EditTextDialog;

    iget-object v0, v0, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/hijacker/MainActivity;->aliases_in:Ljava/io/FileWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/hijacker/AP$2$2;->this$1:Lcom/hijacker/AP$2;

    iget-object v2, v2, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v2, v2, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/hijacker/AP$2$2;->val$dialog:Lcom/hijacker/EditTextDialog;

    iget-object v2, v2, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    sget-object v0, Lcom/hijacker/MainActivity;->aliases_in:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIJACKER/MyListFrgm"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    sget-object v0, Lcom/hijacker/MainActivity;->aliases:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/hijacker/AP$2$2;->this$1:Lcom/hijacker/AP$2;

    iget-object v1, v1, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v1, v1, Lcom/hijacker/AP;->mac:Ljava/lang/String;

    iget-object v2, p0, Lcom/hijacker/AP$2$2;->val$dialog:Lcom/hijacker/EditTextDialog;

    iget-object v2, v2, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/hijacker/AP$2$2;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    iget-object v1, p0, Lcom/hijacker/AP$2$2;->val$dialog:Lcom/hijacker/EditTextDialog;

    iget-object v1, v1, Lcom/hijacker/EditTextDialog;->result:Ljava/lang/String;

    iput-object v1, v0, Lcom/hijacker/AP;->alias:Ljava/lang/String;

    iget-object v0, p0, Lcom/hijacker/AP$2$2;->this$1:Lcom/hijacker/AP$2;

    iget-object v0, v0, Lcom/hijacker/AP$2;->this$0:Lcom/hijacker/AP;

    invoke-virtual {v0}, Lcom/hijacker/AP;->update()V

    return-void
.end method

.class Lcom/google/android/material/chip/Chip$2;
.super Ljava/lang/Object;
.source "Chip.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/chip/Chip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/chip/Chip;


# direct methods
.method constructor <init>(Lcom/google/android/material/chip/Chip;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$100(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$100(Lcom/google/android/material/chip/Chip;)Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-interface {v0, v1, p2}, Lcom/google/android/material/internal/MaterialCheckable$OnCheckedChangeListener;->onCheckedChanged(Ljava/lang/Object;Z)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$200(Lcom/google/android/material/chip/Chip;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/chip/Chip$2;->this$0:Lcom/google/android/material/chip/Chip;

    invoke-static {v0}, Lcom/google/android/material/chip/Chip;->access$200(Lcom/google/android/material/chip/Chip;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :cond_1
    return-void
.end method

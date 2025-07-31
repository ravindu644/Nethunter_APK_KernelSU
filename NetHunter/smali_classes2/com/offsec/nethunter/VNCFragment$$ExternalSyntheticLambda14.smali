.class public final synthetic Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/offsec/nethunter/VNCFragment;

.field public final synthetic f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

.field public final synthetic f$2:Ljava/io/File;

.field public final synthetic f$3:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/offsec/nethunter/VNCFragment;Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;->f$0:Lcom/offsec/nethunter/VNCFragment;

    iput-object p2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iput-object p3, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;->f$2:Ljava/io/File;

    iput-object p4, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;->f$3:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6

    iget-object v0, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;->f$0:Lcom/offsec/nethunter/VNCFragment;

    iget-object v1, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;->f$1:Lcom/offsec/nethunter/utils/ShellExecuter;

    iget-object v2, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;->f$2:Ljava/io/File;

    iget-object v3, p0, Lcom/offsec/nethunter/VNCFragment$$ExternalSyntheticLambda14;->f$3:Landroid/widget/CheckBox;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/offsec/nethunter/VNCFragment;->lambda$onCreateView$3$com-offsec-nethunter-VNCFragment(Lcom/offsec/nethunter/utils/ShellExecuter;Ljava/io/File;Landroid/widget/CheckBox;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

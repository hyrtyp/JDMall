.class Lcom/jd/lottery/lib/ui/widget/PasswordEditText$4;
.super Ljava/lang/Object;
.source "PasswordEditText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jd/lottery/lib/ui/widget/PasswordEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jd/lottery/lib/ui/widget/PasswordEditText;


# direct methods
.method constructor <init>(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PasswordEditText;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/jd/lottery/lib/ui/widget/PasswordEditText$4;->this$0:Lcom/jd/lottery/lib/ui/widget/PasswordEditText;

    #getter for: Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->mPasswordEditText:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/jd/lottery/lib/ui/widget/PasswordEditText;->access$0(Lcom/jd/lottery/lib/ui/widget/PasswordEditText;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.class Lcom/jingdong/app/mall/more/SearchActivity$14;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jingdong/app/mall/more/SearchActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jingdong/app/mall/more/SearchActivity;

.field private final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jingdong/app/mall/more/SearchActivity;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jingdong/app/mall/more/SearchActivity$14;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    iput-object p2, p0, Lcom/jingdong/app/mall/more/SearchActivity$14;->val$items:[Ljava/lang/String;

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 614
    const-string v1, "voice"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/jingdong/app/mall/more/SearchActivity$14;->val$items:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/jingdong/common/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$14;->val$items:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-string v2, "\u3002"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, keyWord:Ljava/lang/String;
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$14;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #calls: Lcom/jingdong/app/mall/more/SearchActivity;->searchSubmit(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/jingdong/app/mall/more/SearchActivity;->access$6(Lcom/jingdong/app/mall/more/SearchActivity;Ljava/lang/String;)V

    .line 620
    iget-object v1, p0, Lcom/jingdong/app/mall/more/SearchActivity$14;->this$0:Lcom/jingdong/app/mall/more/SearchActivity;

    #getter for: Lcom/jingdong/app/mall/more/SearchActivity;->listDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/jingdong/app/mall/more/SearchActivity;->access$15(Lcom/jingdong/app/mall/more/SearchActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 621
    return-void
.end method

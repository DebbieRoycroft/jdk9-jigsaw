package java.util.concurrent;
import java.io.Serializable;
import java.util.AbstractQueue;
import java.util.Collection;
import java.util.Iterator;

/**
 *  This is a stubbed version of PriorityBlockingQueue
 *	used to illustrate replacing a patched version of the class 
 **/
@SuppressWarnings("serial")
public class PriorityBlockingQueue<E>
extends AbstractQueue<E>
implements BlockingQueue<E>, Serializable {
	
	@Override
	public E peek() {
		System.out.println("peek called in overridden PriorityBlockingQueue");
		return null;
	}

	@Override
	public E poll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int drainTo(Collection<? super E> arg0) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int drainTo(Collection<? super E> arg0, int arg1) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean offer(E arg0) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean offer(E arg0, long arg1, TimeUnit arg2) throws InterruptedException {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public E poll(long arg0, TimeUnit arg1) throws InterruptedException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void put(E arg0) throws InterruptedException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public int remainingCapacity() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public E take() throws InterruptedException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Iterator<E> iterator() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int size() {
		// TODO Auto-generated method stub
		return 0;
	}

}

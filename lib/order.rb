require "order/version"

module Order
  class Error < StandardError; end
	def order
		a = self.flatten
		b = {}
		a.each do |e|
			if ((e.to_i == 0) && (e != 0 && e != "0"))
				b.merge!({a.index(e) => e})
			end
		end
		b.to_a.transpose[1].each { |k| a.delete(k) } unless b.empty?
		a.each do |el|
			(0...a.index(el)).each do |indx|
				if el.to_f <= a[indx].to_f
					a.insert(indx, a.delete(el))
					break
				end
			end
		end
		b.keys.each { |ks| a.insert(ks, b[ks]) }
		a
	end
end

class Array
	include Order
end